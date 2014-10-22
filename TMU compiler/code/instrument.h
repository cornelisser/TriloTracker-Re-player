#ifndef INSTRUMENT_H
#define INSTRUMENT_H

#include <fstream>

#include "macrorow.h"

 using namespace std;
/**===================================
 *
 * Instrument class
 *
 *===================================*/
class Instrument{
    unsigned char length;
    unsigned char restart;
    unsigned char waveform;
    MacroRow macro_rows[64];


public:
    Instrument();
    char * store(char *buffer);
    void save(ofstream &outfile, unsigned char i);
};
#endif
