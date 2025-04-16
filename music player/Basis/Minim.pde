import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
int numberOfSongs = 12;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs;
//
String musicPathway = "music/";
String MusicI = "Helldivers 2  - 8bit of Liber-Tea";
String fileName_mp3 = ".mp3";
String musicDirectory ="../../" + musicPathway;
String file =musicDirectory + MusicI + fileName_mp3;
//
void Minim () {
  //
  minim = new Minim(this);
  //println( file );
  playList[ currentSong ] = minim.loadFile( file );
  //playList[ currentSong ].play();
  //
}
