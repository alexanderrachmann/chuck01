Scale sc; TimeGrid tg; 

Clarinet clarinet => dac; 

tg.set( 1::minute/60/2, 4, 4 );

[0] @=> int bass[];

tg.sync();

while( true ) { //infinite loop
  tg.guess() => int i; //global beat indicator
  tg.m => int m; //measure indicator

    //arp( 2, 7, [0,2,4] ) => int a; //the arp/melodic contour
    sc.arp(2) => int a;
    //10 => int a;
    sc.scale( a+bass[m], sc.maj ) => int note; //select the bassnote
  
  play(clarinet,  "clarinet",    note,          1,      0.2    );
  play(clarinet,  "clarinet",    note,          1,      0.1    );
  play(clarinet,  "clarinet",    note,          1,      0.2    );
  play(clarinet,  "clarinet",    note+7,        0.75,    0.1    );
  play(clarinet,  "clarinet",    note,          0.25,    0.1    );
}



fun void play(StkInstrument instrument, string identifier, int note, float duration, float velocity){
    Std.mtof( 2*12 + 7 + note ) => instrument.freq;
    if (note == 0) {}
        else instrument.noteOn(velocity);
    //tg.beat*duration => now;
        
    duration::tg.beat => now;
    <<< "Notenlaenge: ", duration::tg.beat >>>;
        
    //tg.beat => now;
     <<< "Instrument: ", identifier, ", Note: ", note, ", Duration: ", duration, ", Velocity: ", velocity >>>;
}

fun int determineNote(){

}