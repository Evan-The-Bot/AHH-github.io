void setup() {
  //
  fullScreen();
  //
  Population();
  //
  Minim();
  //
  PongSetup();
  //
  SplashSetup();
}
void draw() {
  //
  SplashDraw();
  //
  MainProgram();
  //
  LeftColumnDraw();
  //
  MusicChoiceDraw();
  //
  PongDraw();
  //
  ExitDraw();
  //
}
void mousePressed () {
  //
  MusicChoicePress();
  //
  LeftColumnPress();
  //
  ExitPress();
  //
}
void keyPressed () {
  PongKeyKong();
}
