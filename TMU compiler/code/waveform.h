#ifndef WAVEFORM_H
#define WAVEFORM_H

#include <fstream>

using namespace std;
/**===================================
 *
 * Wave form class
 *
 *===================================*/

class Waveform{
    unsigned char data[32];


public:
    Waveform();
    char* store(char *buffer);
    void save(ofstream &outfile);
};
#endif
