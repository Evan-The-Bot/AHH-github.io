void LeftColumnDraw() {
  // Music Column
  if (MainProgram == true) {
    fill(darkBlue);
    rect(BackgroundMenuLX, BackgroundMenuLY, BackgroundMenuLW, BackgroundMenuLH);
    fill(greenBlue);
    rect(TitleX, TitleY, TitleW, TitleH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(black);
    text(TitleOfSong, TitleX, TitleY, TitleW, TitleH);
    fill(greenBlue);
    rect(AuthorX, AuthorY, AuthorW, AuthorH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(black);
    text(OwnersSong, AuthorX, AuthorY, AuthorW, AuthorH);
    fill(greenBlue);
    rect(ImageX, ImageY, ImageW, ImageH);
    rect(BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH);
    //
    //// Buttons Top Row Mouse Check
    // Play Button
    if (mouseX>PlayButtonX && mouseX<=PlayButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(PlayButtonX, TopRowButtonsY, ControlsButtonW, ControlsButtonH);
    fill(black);
    triangle(TPlayIX, TPlayIY, TPlayIIX, TPlayIIY, TPlayIIIX, TPlayIIIY);
    // Pause Button
    if (mouseX>PauseButtonX && mouseX<=PauseButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(PauseButtonX, TopRowButtonsY, ControlsButtonW, ControlsButtonH);
    fill(black);
    rect(SPauseIX, TopSymbolY, SPauseW, SymbolH);
    rect(SPauseIIX, TopSymbolY, SPauseW, SymbolH);
    // Stop Button
    if (mouseX>StopButtonX && mouseX<=StopButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(StopButtonX, TopRowButtonsY, ControlsButtonW, ControlsButtonH);
    fill(black);
    rect(SStopX, TopSymbolY, SStopW, SymbolH);
    //
    //// Buttons Bottom Row Mouse Check
    // Loop Button
    if (mouseX>LoopButtonX && mouseX<=LoopButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(LoopButtonX, BottomRowButtonsY, ControlsButtonW, ControlsButtonH);
    // Skip Button
    if (mouseX>SkipButtonX && mouseX<=SkipButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(SkipButtonX, BottomRowButtonsY, ControlsButtonW, ControlsButtonH);
    // Fast Forward Button
    if (mouseX>FastForwardButtonX && mouseX<=FastForwardButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(FastForwardButtonX, BottomRowButtonsY, ControlsButtonW, ControlsButtonH);
    //
  }
}
void LeftColumnPress() {
  if (MainProgram == true) {
    // Plays Audio
    if (mouseX>PlayButtonX && mouseX<=PlayButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      playList[currentSong].play();
      println("Play");
    }
    // Pauses Audio
    if (mouseX>PauseButtonX && mouseX<=PauseButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      if ( playList[currentSong].isPlaying() ) {
        playList[currentSong].pause();
      }
      println("Pause");
    }
    // Pauses Then Rewinds Audio
    if (mouseX>StopButtonX && mouseX<=StopButtonX+ControlsButtonW && mouseY<=TopRowButtonsY+ControlsButtonH && mouseY>=TopRowButtonsY) {
      if ( playList[currentSong].isPlaying() ) {
        playList[currentSong].pause();
        playList[currentSong].rewind();
      }
      println("Stop");
    }
    //
    //// Buttons Bottom Row Mouse Check
    // Loops Current Audio
    if (mouseX>LoopButtonX && mouseX<=LoopButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
      playList [currentSong].loop();
      println("Loop");
    }
    /*
    //Skips Current Audio
     if (mouseX>SkipButtonX && mouseX<=SkipButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
     playList[currentSong].skip(999999999);
     playList[currentSong].rewind();
     println("Skip");
     }
     // Fast Forwards to next song?
     */
    if (mouseX>FastForwardButtonX && mouseX<=FastForwardButtonX+ControlsButtonW && mouseY<=BottomRowButtonsY+ControlsButtonH && mouseY>=BottomRowButtonsY) {
      playList[currentSong].skip(10000);
      println("Fast Forward");
    }
    //
  }
}
