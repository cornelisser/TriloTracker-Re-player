#include "track.h"

#include <iostream>
#include <iomanip>

using namespace std;

extern unsigned char DEBUG;

const unsigned char VOLUME_START = 97;
const unsigned char INSTRUMENT_START = VOLUME_START + 14;
const unsigned char COMMAND_START = INSTRUMENT_START + 31;


const unsigned char SINGLE_BASE = 0;
const unsigned char MULTIPLE_BASE = 20;
const unsigned char RETRIG_START = 10 + COMMAND_START;      /// Start # of retrig command.




///- single commands
//const unsigned char CMD_D   = SINGLE_BASE+10;
const unsigned char CMD_8   = SINGLE_BASE+0;        ///HW envelope multiplier
const unsigned char CMD_B0  = SINGLE_BASE+1;
const unsigned char CMD_BB  = SINGLE_BASE+2;
const unsigned char CMD_Cs  = SINGLE_BASE+3;
const unsigned char CMD_Cm  = SINGLE_BASE+4;
const unsigned char CMD_Cc  = SINGLE_BASE+5;
const unsigned char CMD_E4  = SINGLE_BASE+6;
const unsigned char CMD_E6  = SINGLE_BASE+7;
const unsigned char CMD_E8  = SINGLE_BASE+8;
const unsigned char CMD_EF  = SINGLE_BASE+9;
const unsigned char CMD_F   = SINGLE_BASE+10;
const unsigned char CMD_CALL= SINGLE_BASE+11;       /// Call to a re-occurring part
const unsigned char CMD_RET = SINGLE_BASE+12;       /// Return from call to original track.

const unsigned char CMD_B1  = SINGLE_BASE+13;
const unsigned char CMD_B2  = SINGLE_BASE+14;
const unsigned char CMD_B4  = SINGLE_BASE+15;
const unsigned char CMD_E0  = SINGLE_BASE+16;
const unsigned char CMD_E1  = SINGLE_BASE+17;
const unsigned char CMD_E2  = SINGLE_BASE+18;
const unsigned char CMD_ED  = SINGLE_BASE+19;

///- retriggable commands
const unsigned char CMD_0   = MULTIPLE_BASE+0;        ///arp
const unsigned char CMD_1   = MULTIPLE_BASE+1;        ///slide up
const unsigned char CMD_2   = MULTIPLE_BASE+2;        ///slide down
const unsigned char CMD_3   = MULTIPLE_BASE+3;        ///slide note
const unsigned char CMD_4   = MULTIPLE_BASE+4;        ///vibrato
const unsigned char CMD_5   = MULTIPLE_BASE+5;        ///slide tone + volume slide
const unsigned char CMD_6   = MULTIPLE_BASE+6;        ///vibrato + volume slide
const unsigned char CMD_A   = MULTIPLE_BASE+7;        ///volume slide up
const unsigned char CMD_9   = MULTIPLE_BASE+8;       /// Macro offset
const unsigned char CMD_EE  = MULTIPLE_BASE+9;       ///HE envelope shape



const unsigned char CMD_EOT = 191;       /// CMD  end of track







Track::Track() { }

void Track::set_track_nr(unsigned char t) { track_nr = t;}
void Track::set_compiled_track_nr(unsigned char t) { compiled_track_nr = t;}
void Track::set_compiled_pattern_nr(unsigned char p) { compiled_pattern_nr = p;}

unsigned char Track::get_compiled_track_nr(){ return compiled_track_nr; }
unsigned char Track::get_compiled_pattern_nr() { return compiled_pattern_nr; }

unsigned char* Track::store(unsigned char* buffer, int row){
        buffer = rows[row].store(buffer);

        return buffer;
    }

int Track::calculate_length(){
        int result = 64;

        for (int r=0;r<64;r++)
        {

            if (((rows[r].get_note() == 255)||rows[r].get_command() == 13) & (result > r))
            {
                //cout << (int)rows[r].get_note();
                result = r+1;
            }

            //cout << endl;

        }
        //cout << "calculate_length() result:" << result << endl;
        return result;

    }

void Track::clean(int len){
        unsigned char prev = 255;
        unsigned char val,par;

        /// - Remove redundant volumes
        for (int r=0;r<len;r++)
        {
            track_len = len;                    /// Save track length for later.


            val = rows[r].get_volume();
            if  ((val != 0) & (val == prev))
            {
                rows[r].set_volume(0);
                if (DEBUG) {cout << "V";}
            }
            else if (val  != 0)
            {
                prev = val;
            }
        }

        /// - Remove redundant instruments
        prev = 255;
        for (int r=0;r<len;r++)
        {
            val = rows[r].get_instrument();
            if  ((val != 0) & (val == prev))
            {
                rows[r].set_instrument(0);
                if (DEBUG) {cout << "I";}
            }
            else if (val  != 0)
            {
                prev = val;
            }
        }

        /// - Remove redundant command re-triggers
        prev = 255;
        for (int r=0;r<len;r++)
        {
            val = rows[r].get_command();
            par = rows[r].get_parameters();
            if ((val > 0) & (par == 0))
            {
                unsigned char rep = 1;
                ///welke cmds?
                for (int r2=r+1;r2<len;r2++)
                {
                 //   if (rows[r2].get_note() == 0 & rows[r2].get_volume()== 0 & rows[r2].get_instrument() == 0
                 //       & rows[r2].get_command() == val && rows[r2].get_parameters() == 0)
                    if (rows[r2].get_command() == val && rows[r2].get_parameters() == 0)
                    {
                        rows[r2].set_command(0);
                        rows[r2].set_parameters(0);
                        rep++;
                    }
                    else
                    {
                        r2 = len;
                    }
                }
            rows[r].set_repeat(rep);
            }



            ///if retrig erase next ones if until other values on trackrow (vol,note,instr)
        }

    }

void Track::compile() {

    unsigned char* out = compiled_data;            /// pointer to compiled data
    unsigned char val = 0;
    unsigned char par = 0;
    unsigned char rep = 0;

    for (unsigned char r=0;r<track_len;r++)
    {
        if ((r==0) | (!rows[r].is_empty()))          /// skip empty rows (but not the first row)
        {
            /// Compile note
            val = rows[r].get_note();
            if ((val > 0) & (val <= 97) )
            {
                *out++ = val - 1;
//                cout<< "note" << endl;
            }

            /// Compile volume
            val = rows[r].get_volume();
            if ((val > 0) & (val < 16))
            {
                *out++ = val - 1 + VOLUME_START;
 //               cout<< "volume" << hex << (int)(val - 1 + VOLUME_START) << endl;
            }

            /// Compile instrument
            val = rows[r].get_instrument();
            if ((val > 0) & (val < 32))
            {
                *out++ = val + INSTRUMENT_START;
//                cout<< "instrument" << endl;
            }


            /// Compile command
            val = rows[r].get_command();
            par = rows[r].get_parameters();
            rep = rows[r].get_repeat();
            ///--- arpegio
            if ((val == 0) && (par > 0))
            {
                *out++ = COMMAND_START+ CMD_0;
             }
            ///--- slide up
            else if ((val == 1))
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_1;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_1;
                    *out++ = par;
                }
            }
            ///-- slide down
            else if (val == 2)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_2;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_2;
                    *out++ = par;
                }
            }
            ///-- slide tone
            else if (val == 3)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_3;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_3;
                    *out++ = par;
                }
            }
            ///-- vibrato
            else if (val == 4)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_4;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_4;

                    unsigned char tmp;
                    tmp = 8 - (par & 0x07);
                    tmp += par & 0xf0;

                    *out++ = tmp;
                }
            }
            ///-- Slide tone + volume slide
            else if (val == 5)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_5;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_5;
                    *out++ = par;
                }
            }
            ///-- Vibrato + volume slide
            else if (val == 6)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_6;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_6;
                    *out++ = par;
                }
            }
            ///-- Envelope multiplier
            else if (val == 8)
            {
                *out++ = COMMAND_START+CMD_2;
                *out++ = par;

            }
            ///-- Macro offset
            else if (val == 9)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_9;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_9;
                    *out++ = par;
                }
            }
            ///-- Volume slide
            else if (val == 0x0A)
            {
                if (par == 0)
                {
                    *out++ = RETRIG_START + CMD_A;
                    *out++ = rep;
                }
                else
                {
                    *out++ = COMMAND_START+CMD_A;
                    if (par < 16) {*out++ = (par << 1)+128;}
                    else {*out++ = (par >> 3);}
                }
            }
            ///-- SCC commands
            else if (val == 0x0b)
            {
                unsigned char sub = par & 0xF0;
                if (sub == 0)   /// reset waveform to instrument original
                {
                    *out++ = COMMAND_START+CMD_B0;
                }
                else if (sub == 0x10) /// Duty cycle
                {
                    *out++ = COMMAND_START+CMD_B1;
                    *out++ = par & 0x0F;
                }
                else if (sub == 0x20)  /// waveform cut
                {
                    *out++ = COMMAND_START+CMD_B2;
                    *out++ = par & 0x0F;
                }
                else if (sub == 0x40)  /// waveform compress
                {
                    *out++ = COMMAND_START+CMD_B4;
                    *out++ = par & 0x0F;
                }
                else if (sub==0xB0)  /// set waveform
                {
                    *out++ = COMMAND_START+CMD_BB;
                    *out++ = par & 0x0F;
                }
                 else if (sub==0xc0)  /// set waveform
                {
                    *out++ = COMMAND_START+CMD_BB;
                    *out++ = par & 0x0F;
                }
            }
            ///-- SCC morph commands
            else if (val == 0x0c)
            {
                unsigned char sub = par & 0x0F;

                if (par == 0)   /// slave command
                {
                    *out++ = COMMAND_START+CMD_Cs;
                }
                else if (sub == 0x00) /// Continue morph from current
                {
                    *out++ = COMMAND_START+CMD_Cc;
                    *out++ = (par >> 4) & 0x0F;
                }
                else                /// New morph from instrument
                {
                    *out++ = COMMAND_START+CMD_Cm;
                    *out++ = par;
                }

            }
            ///-- End of pattern
            else if (val == 0x0D)
            {
                /// skipped. handled at end of this routine

            }
             ///-- Extended events
            else if (val == 0x0E)
            {
                unsigned char sub = (par & 0xF0);
                if (sub == 0)       /// Short arp
                {
                    *out++ = COMMAND_START+CMD_E0;
                    *out++ = par & 0x0F;
                }
                else if (sub == 0x10) /// Fine slide up
                {
                    *out++ = COMMAND_START+CMD_E1;
                    *out++ = par & 0x0F;
                }
                else if (sub == 0x20)  /// Fine slide down
                {
                    *out++ = COMMAND_START+CMD_E2;
                    *out++ = par & 0x0F;
                }
                else if (sub == 0x40)  /// Vibrato control
                {
                    *out++ = COMMAND_START+CMD_E4;
                    *out++ = par & 0x0F;
                }
                else if (sub==0x60)  /// track detune
                {
                    *out++ = COMMAND_START+CMD_E6;
                    *out++ = (par & 0x0F);
                }
                 else if (sub==0x80)  /// Global transpose
                {
                    *out++ = COMMAND_START+CMD_E8;
                    *out++ = par & 0x0F;
                }
                 else if (sub==0xd0)  /// Note delay
                {
                    *out++ = COMMAND_START+CMD_ED;
                    *out++ = par & 0x0F;
                }
                else if (sub==0xe0)  /// Envelope shape
                {
                    if ((par & 0x0f) == 0 )
                    {
                        *out++ = RETRIG_START + CMD_EE;
                        *out++ = rep;
                    }
                    else
                    {
                        *out++ = COMMAND_START+ CMD_EE;
                        *out++ = par & 0x0F;
                    }
                }
            }
            ///-- Speed
            else if (val == 0x0F)
            {
                *out++ = COMMAND_START+ CMD_F;
                *out++ = par;

            }

            /**
            /
            / Get the delay
            /
            */
            unsigned char delay = 0;
            for (unsigned char d=(r+1);d<track_len;d++)
            {
                    if (!rows[d].is_empty())
                    {
                        break;
                    }
                    delay++;
            }
            *out++ = (192 + delay);
           // cout<< "delay" << (int)delay+193<< endl;
        }

    }
    ///-- End of track delimiter
 //   if (track_nr == 0)
        *out++ = CMD_EOT;
    *out++ = 190;
    *out++ = 190;
}

void Track::draw_compiled_data()
{
    unsigned char* data = compiled_data;
    bool active = true;
    //while ((*data != CMD_EOT) | (counter <400))
    while (active )
    {
        if (*data < INSTRUMENT_START)
        {
            /// check for end delimiter (0,0)
            if (*data == 0)
            {
                data++;
                if (*data == 0)
                    active = false;
                data--;
            }
//          cout << hex << (int)*data << "\t Note" << endl;
        }
        else if (*data < VOLUME_START)
            cout << hex << (int)*data << "\t Instrument" << endl;
        else if (*data < COMMAND_START)
            cout << hex << (int)*data << "\t Volume" << endl;
        else if (*data > 192)
            cout << hex << (int)*data << "\t Wait" << endl;
        else
        {
            if ((*data == COMMAND_START+CMD_B0) | (*data == COMMAND_START+CMD_Cs))
                cout << hex << (int)*data << "\t Command" << endl;
            else if (*data == COMMAND_START+CMD_EOT)
                cout << hex << (int)*data << "\t End of track" << endl;
            else
            {
                cout << hex << (int)*data << "\t Command  Parameter: ";
                data++;
                cout << hex << (int)*data << endl;
            }

        }
        data++;
    }
}


void Track::save_music(ofstream &outfile)
{
    unsigned char* data = compiled_data;
    bool active = true;
    unsigned char next,last,now,skipped = 0;
    unsigned char prev = 255;

    outfile << "track_p" << (int)compiled_pattern_nr << "t" << (int)compiled_track_nr << ":" << endl;


    while (active )
    {
        /// check for end delimiter (0,0)
        if (*data == 190)
        {
            data++;
            if (*data == 190)
            {
                active = false;
                if (skipped == 1) { outfile << "\tdb 0x00\t\t;Dummy data to trigger delay skip." << endl;}
            }
            data--;
        }


        else if (*data < VOLUME_START)
        {
            last = 96;
            outfile << "\tdb 0x" << hex << setfill('0') << setw(2) << (int)*data << "\t\t;Note " << endl;


        }
        else if (*data <= INSTRUMENT_START) {last = 111; outfile << "\tdb 0x" << hex << (int)*data << "\t\t;Volume (0x" << (((int)*data)-VOLUME_START)+1 << ")" <<  endl;}
        else if (*data < COMMAND_START) {last = 142; outfile << "\tdb 0x" << hex << (int)*data << "\t\t;Instrument (0x" << (((int)*data)-INSTRUMENT_START) << ")" << endl;}
        else if (*data >= 192)
        {



                now = *data++;
                next = *data--;

                if ((last >= next) & (now==prev) & (now-191 != 0x40))
                {
                    skipped = 1;
                    outfile << "\t\t\t\t;Skipped delay " <<(unsigned int)now-191 << endl;

                }
                else
                {
                    prev = now;
                    skipped  =0;
                    outfile << "\tdb 0x" << hex << (int)*data << "\t\t;Wait (0x" << (((int)*data)-191) << ")" <<  endl;}
                }



        else
        {
               last = 191;
            if ((*data == COMMAND_START+CMD_B0) | (*data == COMMAND_START+CMD_Cs))
                { outfile << "\tdb 0x" << hex << (int)*data << "\t\t;Command (0x" << (((int)*data)-COMMAND_START) << ")" <<  endl;}
            else if (*data == CMD_EOT)
            {
                outfile << "\tdb 0x" << hex << (int)*data << "\t\t;End of track (0x" << (((int)*data)) << ")" <<  endl;
                //prev = 0;
            }
            else
            {
                if (*data >= RETRIG_START+ MULTIPLE_BASE)
                {
                    unsigned char y = *data++;
                    unsigned char x = *data;
                    outfile << "\tdb 0x" << hex << (int)y << ",0x" << hex << setfill('0') << setw(2) << (int)x << "\t;Retrig Command (0x" << (((int)y)-COMMAND_START) << ")" <<  endl;
                }
                else
                {
                    unsigned char y = *data++;
                    unsigned char x = *data;
                    if (x == CMD_4)
                    {
                        unsigned char tmp = 7 - (y & 0x0f);
                        y = (y &0xf0) + tmp;

                    }



                    outfile << "\tdb 0x" << hex << (int)y << ",0x" << hex << setfill('0') << setw(2) << (int)x << "\t;Command (0x" << (((int)y)-COMMAND_START) << ")" <<  endl;
                }
            }
        }
        data++;
    }



}

void Track::save_order(ofstream &outfile)
{
    outfile << "track_p" << (int)compiled_pattern_nr << "t" << (int)compiled_track_nr;


}




unsigned int Track::get_compiled_size()
{   unsigned int result = 0;
    for (unsigned int x=0;x<400;x++)
    {
        if ((compiled_data[x] == 0) & (compiled_data[x+1] == 0))
        {
            result = x;
            break;
        }
    }
    return result;
}

