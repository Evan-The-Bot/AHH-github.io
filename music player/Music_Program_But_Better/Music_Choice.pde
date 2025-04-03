void MusicChoiceDraw() {
  if (MainProgram == true) {
    if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+SongListH && mouseY>=SongListY) {
      fill(darkGreenBlue);
    } else {
      fill(greenBlue);
    }
    rect(SongListX, SongListY, SongListW, SongListH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(black);
    text(SongListName, SongListX, SongListY, SongListW, SongListH);
    //
    if (MusicSelect == true) {
      if (mouseX>SIX && mouseX<=SIX+SIW && mouseY<=SIY+SIH && mouseY>=SIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIX, SIY, SIW, SIH);
      textSize(generalFontSize);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(SongI, SIX, SIY, SIW, SIH);
      //
      if (mouseX>SIIX && mouseX<=SIIX+SIIW && mouseY<=SIIY+SIIH && mouseY>=SIIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIIX, SIIY, SIIW, SIIH);
      textSize(generalFontSize);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(SongII, SIIX, SIIY, SIIW, SIIH);
      //
      if (mouseX>SIIIX && mouseX<=SIIIX+SIIIW && mouseY<=SIIIY+SIIIH && mouseY>=SIIIY) {
        fill(grey);
      } else {
        fill(white);
      }
      rect(SIIIX, SIIIY, SIIIW, SIIIH);
      textSize(generalFontSize);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(SongIII, SIIIX, SIIIY, SIIIW, SIIIH);
      //
      fill(white);
    }
  }
}
void MusicChoicePress() {
  if (MainProgram == true) {
    if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+SongListH && mouseY>=SongListY && MusicSelect == false) {
      MusicSelect = true;
    } else {
      if (mouseX>SongListX && mouseX<=SongListX+SongListW && mouseY<=SongListY+SongListH && mouseY>=SongListY && MusicSelect == true)
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
    }
  }
}
