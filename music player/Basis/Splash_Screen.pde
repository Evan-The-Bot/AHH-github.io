void SplashSetup() {
  if(MainProgram == false) {
    
  }
}
//
void SplashDraw() {
    if (MainProgram == false) {
rect(ScreenSaverX, ScreenSaverY, ScreenSaverW, ScreenSaverH);
rect(GameMenuX, GameMenuY, GameMenuW, GameMenuH);
rect(StartGameX, StartGameY, StartGameW, StartGameH);
rect(QuitGameX, QuitGameY, QuitGameW, QuitGameH);
  }
}
//
void SplashMousePressed() {
    if (MainProgram == false) {
  
  }
}
