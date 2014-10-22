#include "waveform.h"

#include <iostream>
#include <iomanip>

using namespace std;

Waveform::Waveform() { }
char* Waveform::store(char *buffer)
    {
        for (int tmp=0;tmp<32;tmp++)            /// store 32 byte waveform
        data[tmp] = *buffer++;

        return buffer;
    }


void Waveform::save(ofstream &outfile)
{
    outfile <<  "\tdb 0x" << hex << setfill('0') << setw(2) << (int)data[0];
    for (int x=1;x<32;x++)
    {
        outfile << ",0x" << hex << setfill('0') << setw(2) << (int)data[x];
    }
    outfile << endl;
}
