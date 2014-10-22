#include "trackrow.h"

#include <iostream>
using namespace std;


TrackRow::TrackRow() { }
unsigned char TrackRow::get_note() { return note; }
unsigned char TrackRow::get_instrument() { return instrument; }
unsigned char TrackRow::get_volume() { return volume; }
unsigned char TrackRow::get_command() { return command; }
unsigned char TrackRow::get_parameters() { return parameters; }
unsigned char TrackRow::get_jump() { return jump; }
unsigned char TrackRow::get_repeat() {return repeat;}


bool TrackRow::is_empty()
{
    unsigned char result = 0;
    result += note;
    result += instrument;
    result += volume;
    result += command;
    result += parameters;

    return (result == 0);
}

void TrackRow::set_volume(unsigned char v) { volume = v;}
void TrackRow::set_instrument(unsigned char i) { instrument = i;}
void TrackRow::set_command(unsigned char c) { command = c;}
void TrackRow::set_parameters(unsigned char p) { parameters = p;}
void TrackRow::set_jump(unsigned char j) { jump = j;}
void TrackRow::set_repeat(unsigned char r) { repeat = r;}

unsigned char* TrackRow::store(unsigned char* buffer)
    {
        note = *buffer++;
        instrument = *buffer++;
        volume = (*buffer >> 4 ) & 0x0f;
        command = *buffer++ & 0x0f;
        parameters = *buffer++;
        jump = 0;
        repeat = 0;
        return buffer;
    }


void TrackRow::display_note()
    {
        char notename[12][3] ={"C-","C#","D ","D#","E ","F ","F#","G ","G#","A ","A#","B "};
        char* note_label;

        if (note == 0){             /// No note
            cout <<"---";
        }
        else if (note== 97){        /// Note off
            cout << "-R-";
        }
        else{
            note_label= notename[(note-1)% 12];
            int  note_octave = (note+13)/12;
            cout << note_label << note_octave;
        }
        cout << hex << (int)volume << hex << (int)command << "|";
    }




