#include "macrorow.h"

#include <iostream>
#include <iomanip>

using namespace std;

MacroRow::MacroRow() { }

char* MacroRow::store(char *buffer)
    {
        /// raw macro row data.
        byte1 = *buffer++;
        byte2 = *buffer++;
        byte3 = *buffer++;
        byte4 = *buffer++;

        return buffer;
    }

void MacroRow::save(ofstream &outfile, unsigned char e)
{
    unsigned char result1,result2,result3,result4,result5 = 0;
//    outfile << ";" << hex << (int)byte1 << endl;
 //  outfile << ";" << hex << (int)byte2 << endl;
//    outfile << ";" << hex << (int)byte3 << endl;
//    outfile << ";" << hex << (int)byte4 << endl;


    result1 = byte1 & 0x80;          /// Set the noise active bit
    result1 += ((byte2 >> 3) & 0x10);  /// Set the tone active bit
    result1 += e;                    /// set end macro bit
    ///calculate noise
    if (byte1 & 0x80)
    {


        result3 = byte1 & 0x1f;             /// noise value
        if ((byte1 & 0x40) == 0)
        {
            /// base noise
            result1 += 0x20;

        }
        else if(result3 != 0)
        {
            if ((byte1 & 0x60) == 0x40)
            {
                /// add noise
                result1 += 0x60;
            }
            else if ((byte1 & 0x60) == 0x60)
            {
                /// min noise
                result1 += 0x40;
                result3= (255-result3)+1;
            }
        }
    }

    ///calculate volume
    result2 = byte2 & 0x0f;             /// volume value
    if ((byte2 & 0x20) == 0x00)
    {
        /// base volume
        result1 += 0x01;
    }
    else if (((byte2 & 0x30) == 0x10) & (result2 !=0))
    {
        /// add volume
        result1 +=  0x03;
    }
    else if (result2 !=0)//((byte1 & 0x30) == 0x20)
    {
        /// min volume
        result1 += 0x03;
        result2 = (255-result2)+1;
    }

    ///calculate tone
    result4 = byte3;
    result5 = byte4;
    if (result4 + result5 != 0)
    {
        if ((byte2 & 0x40) == 0x40)
        {
            // min
            result4 = (0xFFFF - (byte3 + (byte4*256)) +1) & 0xff;
            result5 = ((0xFFFF - (byte3 + (byte4*256)) +1) >> 8) & 0xff;
        }
        result1 += 0x04;
    }

    outfile <<"\tdb 0x" << hex << setfill('0') << setw(2) << (int)result1;
    if ((result1 & 0x03) != 0)
    {
        outfile  <<",0x" << hex << setfill('0') << setw(2) << (int)result2;
    }
    if ((result1 & 0x60) != 0)
    {
        outfile  <<",0x" << hex << setfill('0') << setw(2) << (int)result3;
    }
    if ((result1 & 0x04) != 0)
    {
        outfile  <<",0x" << hex << setfill('0') << setw(2) << (int)result4;
        outfile  <<",0x" << hex << setfill('0') << setw(2) << (int)result5;
    }
    outfile << endl;
 //   outfile <<"\tdb 0x" << hex << setfill('0') << setw(2) << (int)byte1 <<",0x";
 //   outfile  << hex << setfill('0') << setw(2) << (int)byte2 <<",0x";
 //   outfile  << hex << setfill('0') << setw(2) << (int)byte3 <<",0x";
 //   outfile  << hex << setfill('0') << setw(2) << (int)byte4 << endl;
}
