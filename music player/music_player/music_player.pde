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
  //
  // Minim Start
  minim = new Minim(this);
  println( file );
  playList[ currentSong ] = minim.loadFile( file );
  //playList[ currentSong ].play();
  // Minim End
}
////
void draw() {
  //
  if (MP == true) {
    fill(darkBlue);
    rect(BackgroundMenuX, BackgroundMenuY, BackgroundMenuW, BackgroundMenuH);
    fill(white);
    rect(PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH);
    fill(greenBlue);
    rect(HeaderX, HeaderY, HeaderW, HeaderH);
    rect(LoopButtonX, LoopButtonY, LoopButtonW, LoopButtonH);
    rect(SkipButtonX, SkipButtonY, SkipButtonW, SkipButtonH);
    rect(PlayButtonX, PlayButtonY, PlayButtonW, PlayButtonH);
    rect(FastForwardButtonX, FastForwardButtonY, FastForwardButtonW, FastForwardButtonH);
    rect(PauseButtonX, PauseButtonY, PauseButtonW, PauseButtonH);
    rect(BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH);
    rect(TitleX, TitleY, TitleW, TitleH);
    rect(AuthorX, AuthorY, AuthorW, AuthorH);
    rect(ImageX, ImageY, ImageW, ImageH);
    rect(SongListX, SongListY, SongListW, SongListH);
    fill(white);
    //
    fill(darkBlue);
    rect(PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
    rect(ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
    rect(PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
    fill(mediumRed);
    rect(ExitX, ExitY, ExitW, ExitH);
    fill(white);
    //
    if (MusicSelect == true) {
      fill(white);
      rect(SIX, SIY, SIW, SIH);
      rect(SIIX, SIIY, SIIW, SIIH);
      rect(SIIIX, SIIIY, SIIIW, SIIIH);
      fill(white);
    }
    //
      if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+PlayButtonH+50 && mouseY>=SongListY) {
    MusicSelect = true;
  } 
    //
  }
  //
  if ( Quit == true ) {
    fill(white);
    rect(QuitMenuX, QuitMenuY, QuitMenuW, QuitMenuH);
    fill(mediumGreen);
    rect(QuitYesX, QuitYesY, QuitYesW, QuitYesH);
    fill(mediumRed);
    rect(QuitNoX, QuitNoY, QuitNoW, QuitNoH);
    fill(lightYellow);
    rect(QuitQX, QuitQY, QuitQW, QuitQH);
    fill(white);
  }
  //
}
////
void mousePressed () {
  //
  if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+PlayButtonH+50 && mouseY>=SongListY) {
    MusicSelect = true;
  } else {
    MusicSelect = false;
  }
  if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY) Quit = true;
  if ( Quit == true) {
    if (mouseX>QuitYesX && mouseX<=QuitYesX+QuitYesW && mouseY<=QuitYesY+QuitYesH && mouseY>=QuitYesY) exit();
    //
    if (mouseX>QuitNoX && mouseX<=QuitNoX+QuitNoW && mouseY<=QuitNoY+QuitNoH && mouseY>=QuitNoY) Quit = false;
  }
  //
  if (mouseX>SIX && mouseX<=SIX+SIW && mouseY<=SIY+SIH && mouseY>=SIY) {
    MusicSelect = false;
  }
  //
  if (mouseX>SIIX && mouseX<=SIIX+SIIW && mouseY<=SIIY+SIIH && mouseY>=SIIY) {
    MusicSelect = false;
  }
  //
  if (mouseX>SIIIX && mouseX<=SIIIX+SIIIW && mouseY<=SIIIY+SIIIH && mouseY>=SIIIY) {
    MusicSelect = false;
  }
  //
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
  //

  //
}
////
void keyPressed () {
  //
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
}
////
