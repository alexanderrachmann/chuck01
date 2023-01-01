Settings settings;

Shakers shaker => dac; 


while( true ) { 
  //settings.timegrid.guess() => int i; //global beat indicator
  //settings.timegrid.m => int m; //measure indicator
    
  settings.play(shaker,  "shaker",    settings.scale.maj[1],   1,      1      );
  settings.play(shaker,  "shaker",    settings.scale.maj[3],   1,      0.5    );
  settings.play(shaker,  "shaker",    settings.scale.maj[1],   1,      1      );
  settings.play(shaker,  "shaker",    0,                       0.75,    0.5    );
  settings.play(shaker,  "shaker",    settings.scale.maj[5],   0.25,    0.5    );    
}

