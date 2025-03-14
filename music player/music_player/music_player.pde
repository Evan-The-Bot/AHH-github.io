// Minim Start
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Minim End
void setup() {
  //
  fullScreen();
  //
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  functional();

  // Minim Start
  minim = new Minim(this);
  println( file );
  playList[ currentSong ] = minim.loadFile( file );
  //playList[ currentSong ].play();
  // Minim End
}
//
void draw() {
  //
  MP();
  //Quit Button Start
  if ( Quit == true ) {
    fill(white);
    rect(QuitMenuX, QuitMenuY, QuitMenuW, QuitMenuH);
    if (mouseX>QuitYesX && mouseX<=QuitYesX+QuitYesW && mouseY<=QuitYesY+QuitYesH && mouseY>=QuitYesY) {
      fill(darkGreen);
    } else {
      fill(mediumGreen);
    }
    rect(QuitYesX, QuitYesY, QuitYesW, QuitYesH);
    if (mouseX>QuitNoX && mouseX<=QuitNoX+QuitNoW && mouseY<=QuitNoY+QuitNoH && mouseY>=QuitNoY) {
      fill(darkRed);
    } else {
      fill(mediumRed);
    }
    rect(QuitNoX, QuitNoY, QuitNoW, QuitNoH);
    fill(lightYellow);
    rect(QuitQX, QuitQY, QuitQW, QuitQH);
  }
  //Quit Button End
}
//
void mousePressed () {
  //
  //Quit Button Start
  if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY && Quit == false) { 
    Quit = true;
  } else {
   if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY && Quit == true) {
     exit();
   }
  }
  if ( Quit == true ) {
    if (mouseX>QuitYesX && mouseX<=QuitYesX+QuitYesW && mouseY<=QuitYesY+QuitYesH && mouseY>=QuitYesY) exit();
    //
    if (mouseX>QuitNoX && mouseX<=QuitNoX+QuitNoW && mouseY<=QuitNoY+QuitNoH && mouseY>=QuitNoY) Quit = false;
  }
  //Quit Button End
  //
  // Music Select Start
  if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+PlayButtonH+50 && mouseY>=SongListY && MusicSelect == false) {
    MusicSelect = true;
  } else {
    if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+PlayButtonH+50 && mouseY>=SongListY && MusicSelect == true)
      MusicSelect = false;
  }
  //
  if ( MusicSelect == true ) {
    //
    if (mouseX>SIX && mouseX<=SIX+SIW && mouseY<=SIY+SIH && mouseY>=SIY) {
      MusicSelect = false;
      println("1");
    }
    //
    if (mouseX>SIIX && mouseX<=SIIX+SIIW && mouseY<=SIIY+SIIH && mouseY>=SIIY) {
      MusicSelect = false;
      println("2");
    }
    //
    if (mouseX>SIIIX && mouseX<=SIIIX+SIIIW && mouseY<=SIIIY+SIIIH && mouseY>=SIIIY) {
      MusicSelect = false;
      println("3");
    }
    // Music Select End
  }
  /*Music Menu functionality
   if (mouseX>LoopButtonX && mouseX<=LoopButtonX+LoopButtonW && mouseY<=LoopButtonY+LoopButtonH && mouseY>=LoopButtonY) {
   }
   //
   if (mouseX>SkipButtonX && mouseX<=SkipButtonX+SkipButtonW && mouseY<=SkipButtonY+SkipButtonH && mouseY>=SkipButtonY) {
   }
   //
   if (mouseX>PlayButtonX && mouseX<=PlayButtonX+PlayButtonW && mouseY<=PlayButtonY+PlayButtonH && mouseY>=PlayButtonY) {
   }
   //
   if (mouseX>FastForwardButtonX && mouseX<=FastForwardButtonX+FastForwardButtonW && mouseY<=FastForwardButtonY+FastForwardButtonH && mouseY>=FastForwardButtonY) {
   }
   //
   if (mouseX>PauseButtonX && mouseX<=PauseButtonX+PauseButtonW && mouseY<=PauseButtonY+PauseButtonH && mouseY>=PauseButtonY) {
   }
   */  // Music Menu Functionality

  //
}
////
void keyPressed () {
  /* Temp keyPressed controls
   if ( key=='P' || key=='p' ) playList[currentSong].play();
   //
   if ( key=='S' | key=='s' ) {
   //STOP Button if no rewind then Pause
   if ( playList[currentSong].isPlaying() ) {
   playList[currentSong].pause();
   } else {
   playList[currentSong].rewind();
   }
   }
   //Loop infinite Button
   if ( key=='L' || key=='l' ) playList [currentSong].loop();
   //SKip V1?
   if ( key=='F' || key=='f') playList[currentSong].skip(10000);
   //NEXT BUTTON
   if ( key=='N' || key=='n' ) {
   playList[currentSong].pause();
   playList[currentSong].rewind();
   
   if ( currentSong==numberOfSongs-1 ) {
   currentSong = 0;
   } else {
   currentSong++;
   }
   playList[currentSong].play();
   } else {
   playList[currentSong].rewind();
   if ( currentSong==numberOfSongs-1 ) {
   currentSong = 0;
   } else {
   currentSong++;
   }
   }
   */
}
////
