void Population() {
  //
  //// Key Varibles
  //
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  generalFontSize = 35;
  generalFont = createFont ("Times New Roman", generalFontSize);
  //
  //// Exit Function
  //
  xSize = 60;
  xFont = createFont ("Corbel", xSize);
  //
  QuitMenuX = appWidth * 9/24;
  QuitMenuY = appHeight * 7/24;
  QuitMenuW = appWidth * 6/24;
  QuitMenuH = QuitMenuW;
  //
  ShaderQBoxX = appWidth * 6/24;
  ShaderQBoxY = 0;
  ShaderQBoxW = appWidth;
  ShaderQBoxH = appHeight;
  //
  QuitYesX = QuitMenuX * 26/24;
  QuitYesY = QuitMenuY * 48/24;
  QuitYesW = QuitMenuW * 1/4;
  QuitYesH = appHeight * 1/15;
  //
  QuitNoX = QuitMenuX * 34/24;
  QuitNoY = QuitMenuY * 48/24;
  QuitNoW = QuitMenuW * 1/4;
  QuitNoH = appHeight * 1/15;
  //
  QuitQX = QuitMenuX * 26/24;
  QuitQY = QuitMenuY * 32/24;
  QuitQW = QuitMenuW * 18/24;
  QuitQH = appHeight * 2/24;
  //
  ExitX = appWidth * 15/16;
  ExitY = 0;
  ExitW = appWidth * 1/16;
  ExitH = appHeight * 27/480;
  //
  //// Main Program Function
  //
  BackgroundMenuRX = appWidth * 22/24;
  BackgroundMenuRY = 0;
  BackgroundMenuRW = appWidth * 6/24;
  BackgroundMenuRH = appHeight;
  //
  HeaderX = BackgroundMenuRW;
  HeaderY = 0;
  HeaderW = appWidth * 16/24;
  HeaderH = appHeight * 2/24;
  //
  PongBackdropX = BackgroundMenuRW;
  PongBackdropY = appHeight * 2/24;
  PongBackdropW = HeaderW;
  PongBackdropH = appHeight * 22/24;
  //
  PlayerIScoreX = appWidth * 11/24;
  PlayerIScoreY = appHeight * 2/240;
  PlayerIScoreW = appWidth * 1/16;
  PlayerIScoreH = appHeight * 16/240;
  //
  ScoreBoxX = appWidth * 13/24;
  ScoreBoxY = appHeight * 2/240;
  ScoreBoxW = appWidth * 1/16;
  ScoreBoxH = appHeight * 16/240;
  //
  PlayerIIScoreX = appWidth * 15/24;
  PlayerIIScoreY = appHeight * 2/240;
  PlayerIIScoreW = appWidth * 1/16;
  PlayerIIScoreH = appHeight * 16/240;
  //
  ClockBoxX = appWidth * 18/24;
  ClockBoxY = 0;
  ClockBoxW = BackgroundMenuRW;
  ClockBoxH = appHeight * 1/24 - 1;
  //
  DateBoxX = ClockBoxX;
  DateBoxY = ClockBoxH - 7;
  DateBoxW = BackgroundMenuRW;
  DateBoxH = ClockBoxH;
  //
  clockFontSize = 26;
  //
  //// Right Column Function
  //
  BackgroundMenuLX = 0;
  BackgroundMenuLY = 0;
  BackgroundMenuLW = appWidth * 6/24;
  BackgroundMenuLH = appHeight;
  //
  TitleX = BackgroundMenuLX;
  TitleY = appHeight * 8/24;
  TitleW = BackgroundMenuLW * 10/20;
  TitleH = appHeight * 1/12;
  //
  AuthorX = TitleW;
  AuthorY = TitleY;
  AuthorW = TitleW;
  AuthorH = appHeight * 1/12;
  //
  ImageX = appWidth * 1.5/92;
  ImageY = appHeight * 11/24;
  ImageW = appWidth * 105/480;
  ImageH = ImageW;
  //
  BarOfVolumeX = appWidth * 1/73;
  BarOfVolumeY = appHeight * 6/24;
  BarOfVolumeW = BackgroundMenuLW * 42/48;
  BarOfVolumeH = appHeight * 1/24;
  //
  // Buttons W/H
  ControlsButtonW = appWidth * 18/480;
  ControlsButtonH = ControlsButtonW;
  //
  TopRowButtonsY = appHeight * 1/48;
  PlayButtonX = appWidth * 2/49;
  PauseButtonX = appWidth * 5/49;
  StopButtonX = appWidth * 8/49;
  //
  TPlayIX = PlayButtonX * 58/48;
  TPlayIY = TopRowButtonsY * 3/2;
  TPlayIIX = PlayButtonX * 58/48;
  TPlayIIY = TopRowButtonsY * 75/20;
  TPlayIIIX = PlayButtonX * 43/24;
  TPlayIIIY = TopRowButtonsY * 5/2;
  //

  SPauseIX = PauseButtonX * 52/48;
  SPauseIIX = PauseButtonX * 59/48;
  TopSymbolY  = TopRowButtonsY * 3/2;
  SPauseW = appWidth * 3/480;
  SymbolH = appHeight * 22/480;
  //
  SStopX = StopButtonX * 49.8/48;
  SStopW = appHeight * 1/22;
  //
  BottomRowButtonsY = appHeight * 3/24;
  LoopButtonX = PlayButtonX;
  SkipButtonX = PauseButtonX;
  FastForwardButtonX = StopButtonX;
  //
  //// In Music Choice
  //
  SongListX = BackgroundMenuLX;
  SongListY = appHeight * 22/24;
  SongListW = BackgroundMenuLW;
  SongListH = appHeight * 2/24;
  //
  SIW = appWidth * 2/24;
  SIH = appHeight * 2/24;
  SIX = BackgroundMenuLX;
  SIY = SongListY - SIH;
  //
  SIIW = appWidth * 2/24;
  SIIH = appHeight * 2/24;
  SIIX = BackgroundMenuLX + SIW;
  SIIY = SongListY - SIIH;
  //
  SIIIW = appWidth * 2/24;
  SIIIH = appHeight * 2/24;
  SIIIX = BackgroundMenuLX + SIW + SIIW;
  SIIIY = SongListY - SIIIH;
  //
  ////For Splash Screen
  //
  ScreenSaverX = 0;
  ScreenSaverY = 0;
  ScreenSaverW = appWidth;
  ScreenSaverH = appHeight;
  //
  GameMenuX = appWidth * 2/5;
  GameMenuY = appHeight * 1/3;
  GameMenuW = appWidth * 1/5;
  GameMenuH = appHeight * 1/3;
  //
  //StartGameX = * ;
  //StartGameY = * ; 
  //StartGameW = * ;
  //StartGameH = * ;
  //
  //QuitGameX = * ;
  //QuitGameY = * ;
  //QuitGameW = * ;
  //QuitGameH = * ;
  //
}
