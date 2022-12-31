Settings settings;

Clarinet clarinet => dac; 

[0] @=> int bass[];

while( true ) { //infinite loop
  settings.timegrid.guess() => int i; //global beat indicator
  settings.timegrid.m => int m; //measure indicator

    //arp( 2, 7, [0,2,4] ) => int a; //the arp/melodic contour
    settings.scale.arp(2) => int a;
    //10 => int a;
    settings.scale.scale( a+bass[m], settings.scale.maj ) => int note; //select the bassnote
  
  settings.play(clarinet,  "clarinet",    note,          1,      0.2    );
  settings.play(clarinet,  "clarinet",    note,          1,      0.1    );
  settings.play(clarinet,  "clarinet",    note,          1,      0.2    );
  settings.play(clarinet,  "clarinet",    note+7,        0.75,    0.1    );
  settings.play(clarinet,  "clarinet",    note,          0.25,    0.1    );
}


