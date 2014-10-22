#ifndef MACROROW_H
#define MACROROW_H

#include <fstream>

 using namespace std;
/**===================================
 *
 * Marco row class
 *
 *===================================*/
class MacroRow{
    unsigned char byte1;
    unsigned char byte2;
    unsigned char byte3;
    unsigned char byte4;

public:
    MacroRow();
    char* store(char *buffer);
    void save(ofstream &outfile, unsigned char e);

};
#endif
