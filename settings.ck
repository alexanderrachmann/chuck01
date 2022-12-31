public class Settings {
    <<< "Settings instantiated", this >>>;
    
    TimeGrid timegrid;     
    timegrid.set( 1::minute/60/2, 4, 4 );    
    timegrid.sync();
    
    Scale scale;
    
    
    fun void play(StkInstrument instrument, string identifier, int note, float duration, float velocity){
        Std.mtof( 2*12 + 7 + note ) => instrument.freq;
        if (note == 0) {}
            else instrument.noteOn(velocity);
        //tg.beat*duration => now;
            
        duration::timegrid.beat => now;
            
        //tg.beat => now;
         <<< "Measure: ", timegrid.nmeas, ", Beat: ", timegrid.nbeat, ", Instrument: ", identifier, ", Note: ", note, ", Duration: ", duration::timegrid.beat >>>;
    }
    
    
    fun int determineNote(){
        // tbd.
    }
        
    
}
