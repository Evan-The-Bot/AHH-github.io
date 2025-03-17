void MP() {
  if (MP == true) {
    fill(darkBlue);
    rect(BackgroundMenuX, BackgroundMenuY, BackgroundMenuW, BackgroundMenuH);
    fill(white);
    rect(PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH);
    fill(greenBlue);
    rect(HeaderX, HeaderY, HeaderW, HeaderH);
    //
        if (mouseX>LoopButtonX && mouseX<=LoopButtonX+LoopButtonW && mouseY<=LoopButtonY+LoopButtonH && mouseY>=LoopButtonY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    //
    rect(LoopButtonX, LoopButtonY, LoopButtonW, LoopButtonH);
        if (mouseX>SkipButtonX && mouseX<=SkipButtonX+SkipButtonW && mouseY<=SkipButtonY+SkipButtonH && mouseY>=SkipButtonY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    //
    rect(SkipButtonX, SkipButtonY, SkipButtonW, SkipButtonH);
    //
        if (mouseX>PlayButtonX && mouseX<=PlayButtonX+PlayButtonW && mouseY<=PlayButtonY+PlayButtonH && mouseY>=PlayButtonY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    //
    rect(PlayButtonX, PlayButtonY, PlayButtonW, PlayButtonH);
    //
        if (mouseX>FastForwardButtonX && mouseX<=FastForwardButtonX+FastForwardButtonW && mouseY<=FastForwardButtonY+FastForwardButtonH && mouseY>=FastForwardButtonY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    //
    rect(FastForwardButtonX, FastForwardButtonY, FastForwardButtonW, FastForwardButtonH);
    //
        if (mouseX>PauseButtonX && mouseX<=PauseButtonX+PauseButtonW && mouseY<=PauseButtonY+PauseButtonH && mouseY>=PauseButtonY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(PauseButtonX, PauseButtonY, PauseButtonW, PauseButtonH);
    //
        if (mouseX>BarOfVolumeX && mouseX<=BarOfVolumeX+BarOfVolumeW && mouseY<=BarOfVolumeY+BarOfVolumeH && mouseY>=BarOfVolumeY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    //
    rect(BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH);
    //
    fill(greenBlue);
    rect(TitleX, TitleY, TitleW, TitleH);
    rect(AuthorX, AuthorY, AuthorW, AuthorH);
    rect(ImageX, ImageY, ImageW, ImageH);
    //
    if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+SongListH && mouseY>=SongListY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(SongListX, SongListY, SongListW, SongListH);
    //
    fill(darkBlue);
    rect(PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
    rect(ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
    rect(PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
    //
    // Quit Button Start
    if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY) {
      fill(darkRed);
    } else {
      fill(mediumRed);
    }
    rect(ExitX, ExitY, ExitW, ExitH);
    textSize(50);
    fill(black);
    text("x", ExitX,ExitY,ExitW,ExitH);
    // Quit Button End
    //
    // Music Select Button Start
    if (MusicSelect == true) {
      if (mouseX>SIX && mouseX<=SIX+SIW && mouseY<=SIY+SIH && mouseY>=SIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIX, SIY, SIW, SIH);
      //
      if (mouseX>SIIX && mouseX<=SIIX+SIIW && mouseY<=SIIY+SIIH && mouseY>=SIIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIIX, SIIY, SIIW, SIIH);
      //
      if (mouseX>SIIIX && mouseX<=SIIIX+SIIIW && mouseY<=SIIIY+SIIIH && mouseY>=SIIIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIIIX, SIIIY, SIIIW, SIIIH);
      //
      fill(white);
      // Music Select End
    }
    //
  }
}
