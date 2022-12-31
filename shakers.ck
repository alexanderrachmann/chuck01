Settings settings;

Shakers shaker => dac; 

[0] @=> int bass[];

while( true ) { //infinite loop
  settings.timegrid.guess() => int i; //global beat indicator
  settings.timegrid.m => int m; //measure indicator

    //arp( 2, 7, [0,2,4] ) => int a; //the arp/melodic contour
    settings.scale.arp(2) => int a;
    //10 => int a;
    settings.scale.scale( a+bass[m], settings.scale.maj ) => int note; //select the bassnote
  
  settings.play(shaker,  "shaker",    note,   1,      1      );
  settings.play(shaker,  "shaker",    note,   1,      0.5    );
  settings.play(shaker,  "shaker",    note,   1,      1      );
  settings.play(shaker,  "shaker",    0,      0.75,    0.5    );
  settings.play(shaker,  "shaker",    note,   0.25,    0.5    );
}

