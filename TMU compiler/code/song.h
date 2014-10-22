#ifndef SONG_H
#define SONG_H

#include <fstream>

#include "instrument.h"
#include "waveform.h"
#include "pattern.h"

using namespace std;

/**===================================
 *
 * Song class
 *
 *===================================*/
class Song {
private:
    int version;
    char name[32];
    char _name_dummy;       /// delimitor for printing name
    char by[32];
    char _by_dummy;         /// delimitor for printing by
    int speed;
    int restart;
    int order_len;
    int order[200];
    char instrumentnames[31][16];
    Instrument instruments[31];
    Waveform waveforms[32];

    int last_pattern;
    Pattern patterns[160];

public:
    Song();
    int store(char *buffer);
    void save_music(ofstream &outfile);
    void save_waveform(ofstream &outfile);
    void save_instrument(ofstream &outfile);

    int clean_patterns();
    void compile_patterns();
    void display();

};
#endif


