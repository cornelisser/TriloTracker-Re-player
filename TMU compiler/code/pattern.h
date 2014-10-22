#ifndef PATTERN_H
#define PATTERN_H

#include <fstream>

#include "track.h"

using namespace std;

/**===================================
 *
 * Pattern class
 *
 *===================================*/

class Pattern{
    unsigned char pattern_nr;
    unsigned char pat_len;


public:
    Pattern();

    Track tracks[8];
    void set_pattern_nr(unsigned char p);

    char* store(char* buffer);
    void save_music(ofstream &outfile, int p);
    void save_order(ofstream &outfile);
    void clean();
    void compile();

    void draw_compiled_track(unsigned char t);

};
#endif

