void MainProgram() {
  //
  if (MainProgram == true) {
    // Use In Queue? IDK HOW TO DO THAT YOU FIGURE IT OUT
    fill(darkBlue);
    rect(BackgroundMenuRX, BackgroundMenuRY, BackgroundMenuRW, BackgroundMenuRH);
    //
    fill(greenBlue);
    rect(HeaderX, HeaderY, HeaderW, HeaderH);
    fill(white);
    rect(PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH);
    fill(darkBlue);
    rect(PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(white);
    text(PlayerIScore, PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
    fill(darkBlue);
    rect(PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(white);
    text(PlayerIIScore, PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
    fill(darkBlue);
    rect(ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
    textSize(generalFontSize);
    textFont(generalFont, generalFontSize);
    textAlign(CENTER, CENTER);
    fill(white);
    text(ScoreScore, ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
    //
    //// The Clock
    // Must be here to constantly Update
    //12H clock
    int h = hour() % 12;
    if (h == 0) h = 12;
    String period = hour() < 12 ? "AM" : "PM";
    //Allows string to work
    String currentTime = nf(h, 2) + ":" + nf(minute(), 2) + ":" + nf(second(), 2) + " " + period;
    //
    noStroke();
    noFill();
    rect(ClockBoxX, ClockBoxY, ClockBoxW, ClockBoxH);
    fill(white);
    textFont(generalFont, clockFontSize);
    textAlign(CENTER, CENTER);
    text(currentTime, ClockBoxX, ClockBoxY, ClockBoxW, ClockBoxH);
    //
    //// The Date
    // Must Be here to Update
    String currentDate = nf(day(), 2) + "/" + nf(month(), 2) + "/" + nf(year(), 4);
    //
    noStroke();
    noFill();
    rect(DateBoxX, DateBoxY, DateBoxW, DateBoxH);
    stroke(1);
    fill(white);
    textFont(generalFont, clockFontSize);
    textAlign(CENTER, CENTER);
    text(currentDate, DateBoxX, DateBoxY, DateBoxW, DateBoxH);
    //
  }
}
