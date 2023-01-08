Settings settings;

Moog moog => dac; 

while( true ) { //infinite loop
  settings.timegrid.guess() => int i; //global beat indicator
  settings.timegrid.m => int m; //measure indicator
  
  settings.play(moog,  "moog",    Math.random2( 0, settings.scale.maj.cap() ),          2,      0.2    );
  settings.play(moog,  "moog",    Math.random2( 0, settings.scale.maj.cap() ),          1,      0.1    );
  settings.play(moog,  "moog",    Math.random2( 0, settings.scale.maj.cap() ),          1,      0.2    );
}


