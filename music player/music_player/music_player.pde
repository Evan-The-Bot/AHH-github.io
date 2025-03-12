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
  rect(BackgroundMenuX, BackgroundMenuY, BackgroundMenuW, BackgroundMenuH);
  rect(PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH);
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
  rect(SIX, SIY, SIW, SIH);
  rect(SIIX, SIIY, SIIW, SIIH);
  rect(SIIIX, SIIIY, SIIIW, SIIIH);
  rect(ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
  rect(PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
  rect(PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
  rect(ExitX, ExitY, ExitW, ExitH);

  if ( Quit == true ) {
    rect(400, 400, 400, 400);
  }
}
////
void mousePressed () {
  //
  if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH) exit();
  //
}
////
void keyPressed () {
  //
  if (key==CODED || keyCode==ESC ) exit();
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
  //BOX?
  if ( key=='e' || key=='E' ) {
    Quit = true;
  }
  if ( key=='+' || key=='=' ) {
    Quit = false;
  }
}
////
