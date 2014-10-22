#include "song.h"
#include "pattern.h"

#include <fstream>
#include <iostream>
#include <iomanip>

using namespace std;

   extern unsigned char TRACKS;
   extern unsigned char DEBUG;


   Song::Song() { }

int Song::store(char *buffer)
    {
        /**==================================
         * initialization before loading data
         * ==================================*/
         for (unsigned char p=0;p<160;p++)
            patterns[p].set_pattern_nr(p);        /// set the patter numbers


        _name_dummy = 0;
        _by_dummy = 0;
        for (int tmp=0;tmp<200;tmp++)      /// clear order list
            order[tmp] = 255;

        /**==================================
         * load buffer data into song
         * ==================================*/

        version = (int)*buffer++;           /// Version
        for (int tmp=0;tmp <32;tmp++)       /// song name
            name[tmp] = *buffer++;
        for (int tmp=0;tmp <32;tmp++)       /// song by / composer
            by[tmp] = *buffer++;
        speed = (int)*buffer++;             /// initial speed
        restart = (int)*buffer++;           /// restart position
        order_len = (int)*buffer++;         /// order length
        for (int tmp=0;tmp<order_len;tmp++) /// order sequence
            order[tmp] = (int)*buffer++;
        for (int i=0;i< 31;i++)             /// Instrument names
        {
            for (int tmp=0;tmp<16;tmp++)
                instrumentnames[i][tmp] = *buffer++;
        }
        for (int tmp=0;tmp<31;tmp++)        /// Instrument macro's
            buffer = instruments[tmp].store(buffer);

        for (int tmp=0;tmp<32;tmp++)        /// Waveforms
            buffer = waveforms[tmp].store(buffer);

        /// Determine the highest number of the patterns used
        last_pattern = 0;
        for (unsigned char tmp=0;tmp<order_len;tmp++)
        {
            if (order[tmp] > last_pattern)
                last_pattern = order[tmp];

        }
        if (DEBUG) {cout << "Last pattern: " <<last_pattern << endl;}





        /// now store
        int pat_temp;
        while ((int)*buffer != -1)
        {
            pat_temp = (int)*buffer;
            buffer = patterns[pat_temp].store(buffer);

            /// Check if pattern is present in de the order
            patterns[pat_temp].set_pattern_nr(-1);
            for (unsigned char tmp=0;tmp<order_len;tmp++)
            {
                if (order[tmp] == pat_temp)
                    patterns[pat_temp].set_pattern_nr(pat_temp);

            }

        }

        return 0;
    }

int Song::clean_patterns()
    {


        /// Remove redundant tracks
        for (unsigned char p1=0;p1<last_pattern+1;p1++)
        {
            for (unsigned char t1=0;t1<TRACKS;t1++)
            {
                for (unsigned char p2=p1;p2<last_pattern+1;p2++)
                {
                    for (unsigned char t2=0;t2<TRACKS;t2++)
                    {
                        if ((p1==p2) & (t1==t2))
                        {
                            /// skip as we are at same track
                        }
                        else if (patterns[p2].tracks[t2].get_compiled_pattern_nr() != p2)
                        {
                            /// skip as this is already marked as redundant.
                        }
                        else if (patterns[p1].tracks[t1].get_compiled_pattern_nr() != p1)
                        {
                            /// skip as this is pattern is unused,
                        }
                        else if (patterns[p2].tracks[t2].get_compiled_track_nr() != t2)
                        {
                            /// skip as this is already marked as redundant.
                        }
                        else if ((p1 == p2) & (t2 < t1))
                        {
                            /// skip if we already processed these tracks
                        }
                        else
                            /// we can check now.
                        {
                            int same = 1;
                            for (int r=0; r<64;r++)
                            {
                                if ((patterns[p1].tracks[t1].rows[r].get_note() == patterns[p2].tracks[t2].rows[r].get_note())
                                    & (patterns[p1].tracks[t1].rows[r].get_instrument() == patterns[p2].tracks[t2].rows[r].get_instrument())
                                    & (patterns[p1].tracks[t1].rows[r].get_volume() == patterns[p2].tracks[t2].rows[r].get_volume())
                                    & (patterns[p1].tracks[t1].rows[r].get_command() == patterns[p2].tracks[t2].rows[r].get_command())
                                    & (patterns[p1].tracks[t1].rows[r].get_parameters() == patterns[p2].tracks[t2].rows[r].get_parameters()))
                                {
                                }
                                else
                                {
                                    same = 0;
                                }
                            }
                            if (same==1)
                            {
                                /// tracks are the same
                                patterns[p2].tracks[t2].set_compiled_pattern_nr(p1);
                                patterns[p2].tracks[t2].set_compiled_track_nr(t1);
                                if (DEBUG) {cout << "redundant track (P/T):" << (int)p2 <<  "/" << (int)t2 << " - " << (int)p1 << "/" << (int)t1 << endl;}


                            }
                        }
                    }
                }
            }
        }


        for (int p=0;p<last_pattern+1;p++)
        {
            if (DEBUG) {cout << "clean pattern:" << p << " |";}
            patterns[p].clean();
            if (DEBUG) {cout << endl;}
        }
        return 0;
    }

void Song::compile_patterns()
    {
        for (int p=0;p<last_pattern+1;p++)
        {
            if (DEBUG) {cout << "compiling pattern:" << p <<  " ";}
            patterns[p].compile();
            if (DEBUG) {cout << endl;}
        }

   //     patterns[0].compile();
   //     patterns[0].draw_compiled_track(2);

    }

void Song::display()
    {
        cout << "version : " << version << endl;
        cout << "name    : " << name << endl;
        cout << "by      : " << by << endl;
        if (DEBUG) {cout << "speed   : " << speed << endl;}
        if (DEBUG) {cout << "restart : " << restart << endl;}
        if (DEBUG) {cout << "orderlen: " << order_len << endl;}
    }



void Song::save_music(ofstream &outfile)
{


    outfile << ";[ Song start data ]" << endl;
    outfile << "\tdw " << "restart" << "\t\t ; Restart position (offset from end)." << endl;
    outfile << "\tdb 0x" << hex << speed << "\t\t ; Initial song speed." << endl;
    outfile << endl << ";[ Song order pointer list ]" << endl;

    /// now get the order pointer list.
    for (int p=0; p < order_len; p++)
    {
        if (p== restart) {outfile  << "restart:" << endl;}
        patterns[order[p]].save_order(outfile);
    }
    outfile << "\tdw 0x0000" << "\t\t;End of sequence delimiter" << endl;


    outfile << endl << ";[ Song track data ]" << endl;
    for (int p=0;p<last_pattern+1;p++)
    {
        //outfile << "; pattern [" << p << "]" << endl;
        patterns[p].save_music(outfile, p);
    }


    outfile << endl << ";[ Song track sub_data ]" << endl;
}

void Song::save_waveform(ofstream &outfile)
{
    for (int w=0; w<32;w++)
    {
        waveforms[w].save(outfile);
    }
}

void Song::save_instrument(ofstream &outfile)
{
    /// header
    for (int i=0; i<31;i++)
    {
        outfile << "\tdw instr_" << (int)i << endl;
    }

    outfile << endl;

    for (unsigned char i=0; i<31;i++)
    {
        outfile << "instr_" << (int)i << ":" << endl;
        instruments[i].save(outfile, i);
    }
}



