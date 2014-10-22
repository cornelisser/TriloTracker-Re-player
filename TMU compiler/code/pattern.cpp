#include "pattern.h"

#include <iostream>
using namespace std;

extern unsigned char TRACKS;
extern unsigned char DEBUG;

Pattern::Pattern() {
    for (unsigned char t = 0;t < TRACKS;t++)
    {
        tracks[t].set_track_nr(t);
        tracks[t].set_compiled_track_nr(t);
    }
}

void Pattern::set_pattern_nr(unsigned char p)
{
    pattern_nr = p;
    for (int t=0;t<TRACKS;t++)
    {
        tracks[t].set_compiled_pattern_nr(p);

    }
}



char* Pattern::store(char* buffer) {
        /// debug
        /// temp = 63;

        unsigned char pat_buffer[2048];
        unsigned char *pat_buf = pat_buffer;               /// for storing the decompressed pattern
        bool done = false;

        /// Clear the pattern buffer
        for (int tmp=0;tmp<2048;tmp++)
            pat_buffer[tmp] = 255;

        buffer+= 3;                               /// skip compressed pattern size

        ///-- decompress the pattern
        while (!done)
        {
            if (*buffer == 0)              /// If 0 then next value is number of 0's
            {
                buffer++;
                unsigned char y= *buffer++;

                if (y==0)                       /// second value is 0 then end of data
                    done = true;
                else
                {
                    for (unsigned char x=0;x<y;x++)
                        *pat_buf++ = 0;
                }
            }
            else
            {
                *pat_buf++ = *buffer++;                 /// uncompressed data.
            }
        }

        ///-- Now store decompressed data in tracks

        unsigned char *pat_buf2 = pat_buffer;
        for (int row=0;row<64;row++)                    /// process 64 rows
        {

            for (int t=0;t<8;t++)                       /// 8 tracks per line
            {
                pat_buf2 = tracks[t].store(pat_buf2, row);  /// store 4 byte data
            }

        }

        ///-- Now get the length of the pattern
        pat_len = 64;

        for (int tmp=0;tmp<8;tmp++)
        {

            if (tracks[tmp].calculate_length() < pat_len)
                pat_len = tracks[tmp].calculate_length();
        }

        //cout << "Pattern length :"<< (int)pat_len << endl;

        return buffer;
    }

void Pattern::clean(){
        for (int t=0;t<TRACKS;t++)
        {
            if (DEBUG) {cout << " t:" << t << " ";}
              tracks[t].clean(pat_len);
        }


    }

void Pattern::compile() {
    for (int t=0;t<TRACKS;t++)
    {
        if (DEBUG) {cout << "t:" << t << "(";}
        tracks[t].compile();
        if (DEBUG) {cout << tracks[t].get_compiled_size() << "), ";}
    }

}

void Pattern::draw_compiled_track(unsigned char t) {
    tracks[t].draw_compiled_data();
}


void Pattern::save_music(ofstream &outfile, int p)
{
    for (int t=0;t<TRACKS;t++)
    {
        if ((tracks[t].get_compiled_pattern_nr() == p) & (tracks[t].get_compiled_track_nr() == t) )
            tracks[t].save_music(outfile);
    }
}

void Pattern::save_order(ofstream &outfile)
{
    outfile << "\tdw ";
    for (int t=0;t<TRACKS;t++)
    {
        tracks[t].save_order(outfile);
        if (t<TRACKS-1) { outfile << ", ";}
    }
    outfile << endl;
}

