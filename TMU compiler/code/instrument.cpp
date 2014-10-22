#include "instrument.h"

#include <iostream>
#include <iomanip>

Instrument::Instrument() { }

char* Instrument::store(char *buffer)
    {
        length = *buffer++;                 /// macro length
        restart = *buffer++;                /// marco restart
        waveform = *buffer++;               /// macro waveform
        //MacroRow macro_rows[length];        /// re-init the number of rows

        for (int tmp=0;tmp<length;tmp++)    /// store the macro rows
            buffer = macro_rows[tmp].store(buffer);

        return buffer;
    }

void Instrument::save(ofstream &outfile, unsigned char i)
{
    outfile << "\tdb 0x" << hex << setfill('0') << setw(2) << (int)waveform << "\t; waveform"<< endl;
 //   outfile << "\tdb 0x" << hex << setfill('0') << setw(2) << (int)length << "\t; length" << endl;
    outfile << "\tdb _i" << hex << (int)i << "_rst-(instr_"<< (int)i <<"+2)" << "\t; restart position"<< endl;


    for (int r=0;r<length;r++)
    {
        if  (r==restart) { outfile << "_i" << hex << (int)i << "_rst:" << endl;}
        if (r== length -1) {macro_rows[r].save(outfile, 8);}
        else {macro_rows[r].save(outfile, 0);}
    }
}


