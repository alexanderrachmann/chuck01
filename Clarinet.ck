 
    Settings settings;

    Clarinet clarinet => dac; 

    while( true ) { //infinite loop
      settings.timegrid.guess() => int i; //global beat indicator
      settings.timegrid.m => int m; //measure indicator
      
      settings.play(clarinet,  "clarinet",    Math.random2( 0, settings.scale.maj.cap() ),          1,      0.2    );
      settings.play(clarinet,  "clarinet",    Math.random2( 0, settings.scale.maj.cap() ),          1,      0.1    );
      settings.play(clarinet,  "clarinet",    Math.random2( 0, settings.scale.maj.cap() ),          1,      0.2    );
      settings.play(clarinet,  "clarinet",    Math.random2( 0, settings.scale.maj.cap() )+12,        0.75,    0.1    );
      settings.play(clarinet,  "clarinet",    Math.random2( 0, settings.scale.maj.cap() ),          0.25,    0.1    );
    }


