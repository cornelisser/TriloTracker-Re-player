#ifndef TRACKROW_H
#define TRACKROW_H
/**===================================
 *
 * TrackRow class
 *
 *===================================*/
class TrackRow{
    unsigned char note;
    unsigned char instrument;
    unsigned char volume;
    unsigned char command;
    unsigned char parameters;
    unsigned char repeat;           // Nr of times the retrig command is repeated.
    unsigned char jump;

public:
    TrackRow();
    unsigned char get_note();
    unsigned char get_instrument();
    unsigned char get_volume();
    unsigned char get_command();
    unsigned char get_parameters();
    unsigned char get_jump();
    unsigned char get_repeat();

    bool is_empty();

    void set_volume(unsigned char v);
    void set_instrument(unsigned char i);
    void set_jump(unsigned char);
    void set_command(unsigned char);
    void set_parameters(unsigned char);
    void set_repeat(unsigned char);

    unsigned char* store(unsigned char* buffer);

     void display_note();

};
#endif
