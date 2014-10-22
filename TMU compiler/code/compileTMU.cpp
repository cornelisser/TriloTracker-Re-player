#include <fstream>
#include <iostream>
#include <sys/stat.h>

#include "song.h"

using namespace std;

    string  version="0.0.1";
    Song    song;
    string  inputfile;
    string  outputfile;
    string  wave_outputfile;
    string  instrument_outputfile;

    unsigned char TRACKS = 8;
    unsigned char DEBUG = 0;

string make_filename(string &s, string a);

void get_options(char **&argv,int &i) {
  char *p,c;
  while (argv[i] && *argv[i]=='-') {
    p=argv[i++]+1;
    do {
      c=*p++;
      switch (tolower(c)) {
//      case 'q': dolistfile=0; break;
      case 'd': DEBUG=1; break;
//      case 'l': labellisting=1; partlisting=1; break;
      case '3': TRACKS = 3; break;
 //     case 'j': options.optimizejumps=true; break;
      default:
        cout << "Unrecognised option: " << c << endl;
        break;
      }
    } while (*p);
  }
}



/**
 Main

**/
int main (int argc, char *argv[])
{
    cout << "CompileTMU v" << version << " [" << __DATE__ << "] www.trilobyte-msx.com/TriloTracker" << endl;

    if (argc < 2)
    {
        cout << "Copyright 2014 Richard Cornelisse" << endl << endl;
        cout << "Usage: " << endl;
        cout << "  compiletmu [-options] sourcefile [targetfile]" << endl << endl;
        cout << "Options:" << endl;
        cout << " -d      Debug information." << endl;
        cout << " -3      Compile only PSG (3 tracks)." << endl;
        return 1;
    }
    else {
        /// Init arguments
        int i=1;
        get_options(argv,i);     /// here method to extract options
        if (argv[i]) inputfile= argv[i++];
        if (argv[i]) outputfile=argv[i++];
        if (argv[i]) {cout << "Error: Too many parameters." << endl; return 1;}
        if (!inputfile[0]) {cout << "Error: No input file." << endl; return 1;}

        if (!outputfile[0]) {outputfile=make_filename(inputfile,"_tmu.asm");}
        wave_outputfile = make_filename(outputfile,"_wav.asm");
        instrument_outputfile = make_filename(outputfile,"_ins.asm");


        /// Init
        struct stat     filestatus;
        int             filesize;

        /// Get the file size of the parameters
        stat (inputfile.data(), &filestatus);
        filesize = filestatus.st_size;

        char buffer[filesize];

        /// If the filesize = 0 then it is not a file.
        if  (filesize > 0)
        {
            /// Valid filename
            ifstream infile (inputfile.data());
            if (!infile.is_open())
            {
                cout << "Could not open file "<< inputfile.data() << "\n";
                return 1;
            }

            /// Read the file as a whole into buffer
            infile.read(buffer,filesize);
            infile.close();
            song.store(buffer);

            song.display();
            /// remove redundancy
            song.clean_patterns();

            /// compile patterns
            song.compile_patterns();


            /// write the output file
            /// FIRST MUSIC DATA
            ofstream outfile (outputfile.data());
            if (!outfile.is_open())
            {
                cout << "Could not write file "<< outputfile.data() << "\n";
                return 1;
            }
            outfile << "; Compiled using CompileTMU v" << version << " [" << __DATE__ << "]" << endl;
            outfile << "; Copyright 2014 Richard Cornelisse" << endl << endl;

            int pos = (int)outputfile.find_first_of('.');
            outfile << "\tmodule " << outputfile.substr(0,pos) << endl;
            outfile << "\t;org 0x0000" << endl << endl;


            song.save_music(outfile);

            outfile << "\tENDMODULE";
            outfile.close();

            /// WAVEFORM DATA
            outfile.open(wave_outputfile.data());
            if (!outfile.is_open())
            {
                cout << "Could not write file "<< outputfile.data() << "\n";
                return 1;
            }
            outfile << "; Compiled using CompileTMU v" << version << " [" << __DATE__ << "]" << endl;
            outfile << "; Copyright 2014 Richard Cornelisse" << endl << endl;

            song.save_waveform(outfile);
            outfile.close();


            /// INSTRUMENT DATA
            outfile.open(instrument_outputfile.data());
            if (!outfile.is_open())
            {
                cout << "Could not write file "<< outputfile.data() << "\n";
                return 1;
            }
            outfile << "; Compiled using CompileTMU v" << version << " [" << __DATE__ << "]" << endl;
            outfile << "; Copyright 2014 Richard Cornelisse" << endl << endl;

            pos = (int)instrument_outputfile.find_first_of('.');
            outfile << "\tmodule " << instrument_outputfile.substr(0,pos) << endl;
            outfile << "\t;org 0x0000" << endl << endl;


            song.save_instrument(outfile);

            outfile << "\tENDMODULE";
            outfile.close();
        }
        else
        {
            /// Parameter?
            cout << "File not found." << argv[1] << endl;
            return 1;
        }






  /*
        ifstream infile (argv[1]);
        if (!infile.is_open())
            cout << "Could not open file "<< argv[1] << "\n";
        else {
  */
    }
    return 0;
}


/// replace extension with a new sub-string.
string make_filename(string &s, string a)
{
    int pos = (int)s.find_last_of('.');
    if (pos == -1) {return s+a;}
    else {return s.substr(0,pos)+a;}
}


