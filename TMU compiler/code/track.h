#ifndef TRACK_H
#define TRACK_H

#include <fstream>

#include "trackrow.h"

 using namespace std;
/**===================================
 *
 * Track class
 *
 *===================================*/
class Track{
    unsigned char track_nr;
    unsigned char compiled_pattern_nr;
    unsigned char compiled_track_nr;

    unsigned char track_len;
    unsigned char compiled_data[400];

public:
    Track();

    TrackRow rows[64];
    void set_track_nr(unsigned char t);
    void set_compiled_track_nr(unsigned char t);
    void set_compiled_pattern_nr(unsigned char t);

    unsigned char* get_compiled_data();
    unsigned int get_compiled_size();

    unsigned char get_compiled_track_nr();
    unsigned char get_compiled_pattern_nr();

    unsigned char* store(unsigned char* buffer, int row);
    void save_music(ofstream &outfile);
    void save_order(ofstream &outfile);


    int calculate_length();
    void clean(int len);
    void compile();

    void draw_compiled_data();

};

#endif
