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
  XFont = createFont ("Corbel", xSize);
  //
  QuitMenuX = appWidth * 9/24;
  QuitMenuY = appHeight * 7/24;
  QuitMenuW = appWidth * 6/24;
  QuitMenuH = QuitMenuW;
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
  QuitQX = QuitMenuX * 27/24;
  QuitQY = QuitMenuY * 30/24;
  QuitQW = QuitMenuW * 15/24;
  QuitQH = appHeight * 2/24;
  //
  ExitX = 0;
  ExitY = 0;
  ExitW = QuitMenuW * 1/4;
  ExitH = appHeight * 13/240;
  //
  //// Main Program Function
  //
  HeaderX = 0;
  HeaderY = 0;
  HeaderW = appWidth * 18/24;
  HeaderH = appHeight * 2/24;
  //
  BackgroundMenuLX = 0;
  BackgroundMenuLY = appHeight * 2/24;
  BackgroundMenuLW = appWidth * 2/24;
  BackgroundMenuLH = appHeight;
  //
  PongBackdropX = BackgroundMenuLW;
  PongBackdropY = appHeight * 2/24;
  PongBackdropW = appWidth * 16/24;
  PongBackdropH = appHeight;
  //
  PlayerIScoreX = appWidth * 7/24;
  PlayerIScoreY = appHeight * 2/240;
  PlayerIScoreW = appWidth * 15/240;
  PlayerIScoreH = appHeight * 16/240;
  //
  ScoreBoxX = appWidth * 9/24;
  ScoreBoxY = appHeight * 2/240;
  ScoreBoxW = appWidth * 15/240;
  ScoreBoxH = appHeight * 16/240;
  //
  PlayerIIScoreX = appWidth * 11/24;
  PlayerIIScoreY = appHeight * 2/240;
  PlayerIIScoreW = appWidth * 15/240;
  PlayerIIScoreH = appHeight * 16/240;
  //
  DateBoxX = ScoreBoxX * 21.5/48;
  DateBoxY = ScoreBoxY;
  DateBoxW = BackgroundMenuLW;
  DateBoxH = ScoreBoxH;
  //
  ClockBoxX = ScoreBoxX * 3/2;
  ClockBoxY = ScoreBoxY;
  ClockBoxW = BackgroundMenuLW;
  ClockBoxH = ScoreBoxH;
  //
  clockFontSize = 26;
  //
  //// Right Column Function
  //
  BackgroundMenuX = appWidth * 18/24;
  BackgroundMenuY = 0;
  BackgroundMenuW = appWidth * 12/48;
  BackgroundMenuH = appHeight;
  //
  TitleX = BackgroundMenuX;
  TitleY = appHeight * 8/24;
  TitleW = BackgroundMenuW * 10/20;
  TitleH = appHeight * 1/12;
  //
  AuthorX = BackgroundMenuX * 28/24;
  AuthorY = TitleY;
  AuthorW = TitleW;
  AuthorH = appHeight * 1/12;
  //
  ImageX = BackgroundMenuX * 49/48;
  ImageY = appHeight * 11/24;
  ImageW = appWidth * 105/480;
  ImageH = ImageW;
  //
  BarOfVolumeX = BackgroundMenuX * 49/48;
  BarOfVolumeY = appHeight * 6/24;
  BarOfVolumeW = BackgroundMenuW * 42/48;
  BarOfVolumeH = appHeight * 1/24;
  //
  // Buttons W/H
  ControlsButtonW = appWidth * 18/480;
  ControlsButtonH = ControlsButtonW;
  //
  TopRowButtonsY = appHeight * 1/48;
  PlayButtonX = BackgroundMenuX * 52/49;
  PauseButtonX = BackgroundMenuX * 56/49;
  StopButtonX = BackgroundMenuX * 60/49;
  //
  TPlayIX = PlayButtonX * 24.3/24;
  TPlayIY = TopRowButtonsY * 3/2;
  TPlayIIX = PlayButtonX * 24.3/24;
  TPlayIIY = TopRowButtonsY * 7.5/2;
  TPlayIIIX = PlayButtonX * 24.9/24;
  TPlayIIIY = TopRowButtonsY * 5/2;
  //
  BottomRowButtonsY = appHeight * 3/24;
  LoopButtonX = PlayButtonX;
  SkipButtonX = PauseButtonX;
  FastForwardButtonX = StopButtonX;
  //
  //// In Music Choice
  //
  SongListX = BackgroundMenuX;
  SongListY = appHeight * 22/24;
  SongListW = BackgroundMenuW;
  SongListH = appHeight * 2/24;
  //
  SIW = appWidth * 2/24;
  SIH = appHeight * 2/24;
  SIX = BackgroundMenuX;
  SIY = SongListY - SIH;
  //
  SIIW = appWidth * 2/24;
  SIIH = appHeight * 2/24;
  SIIX = BackgroundMenuX + SIW;
  SIIY = SongListY - SIIH;
  //
  SIIIW = appWidth * 2/24;
  SIIIH = appHeight * 2/24;
  SIIIX = BackgroundMenuX + SIW + SIIW;
  SIIIY = SongListY - SIIIH;
  //
}
