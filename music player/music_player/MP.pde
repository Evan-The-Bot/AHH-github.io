void MP() {
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
}
