////General Use Everywhere
boolean MainProgram = true;
int appWidth, appHeight;
PFont generalFont;
int generalFontSize, clockFontSize;
// Colors add as needed
color lightRed = #FF3434, lightOrange = #FFAD29, lightYellow = #FEFF00, lightGreen = #75FC00, lightBlue = #50FFF5, lightPurple = #AA24FF, lightPink = #FF58F4;
color mediumRed = #FA0303, mediumOrange = #FF7D03, mediumYellow = #DBD407, mediumGreen = #3BEA51, mediumBlue = #005EFC, mediumPurple = #9D03FF, mediumPink = #FF03C5;
color darkRed = #A70F0F, darkOrange = #D15E00, darkGreen = #026F10, darkBlue = #003EA5, darkPurple = #6A03AA, darkPink = #C60098;
color black = #000000, white = #FFFFFF, grey = #D6D4D4, greenBlue = #30D5C8, darkGreenBlue = #02C6B1;
//// Used in Music Controls
float BackgroundMenuLX, BackgroundMenuLY, BackgroundMenuLW, BackgroundMenuLH;
float TitleX, TitleY, TitleW, TitleH;
float AuthorX, AuthorY, AuthorW, AuthorH;
float ImageX, ImageY, ImageW, ImageH;
float BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH;
float ControlsButtonW, ControlsButtonH;
float TopRowButtonsY, PlayButtonX, PauseButtonX, StopButtonX;
float BottomRowButtonsY, LoopButtonX, SkipButtonX, FastForwardButtonX;
String OwnersSong = "Author", TitleOfSong = "Title";
float TPlayIX, TPlayIY, TPlayIIX, TPlayIIY, TPlayIIIX, TPlayIIIY;
float SPauseIX, SPauseIIX, TopSymbolY, SPauseW, SymbolH, SStopX, SStopW;
//float TffIX, TffIY, TffIIX, TffIIY, TffIIIX, TffIIIY, TfffIX, TfffIY, TfffIIX, TfffIIY, TfffIIIX, TfffIIIY;
//float TSkipIX, TSkipIY, TSkipIIX, TSkipIIY, TSkipIIIX, TSkipIIIY, SSkipX, SSkipY, SSkipW, SSkipH;
//circle circle arrow loop
//// Used in Music Choice
float SIX, SIY, SIW, SIH;
float SIIX, SIIY, SIIW, SIIH;
float SIIIX, SIIIY, SIIIW, SIIIH;
float SongListX, SongListY, SongListW, SongListH;
String SongListName = "Song List", SongI = "Song 1", SongII = "Song 2", SongIII = "Song 3";
boolean MusicSelect = false, MusicButtonYes = false;
//// Used in Main Program
float BackgroundMenuRX, BackgroundMenuRY, BackgroundMenuRW, BackgroundMenuRH;
float PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH;
float PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH;
float PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH;
float ClockBoxX, ClockBoxY, ClockBoxW, ClockBoxH;
float DateBoxX, DateBoxY, DateBoxW, DateBoxH;
float ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH;
float HeaderX, HeaderY, HeaderW, HeaderH;
String PlayerIScore = "P1", PlayerIIScore = "P2", ScoreScore = "Score:";
//// Used in Exit Function
int xSize;
PFont xFont;
float ShaderQBoxX, ShaderQBoxY, ShaderQBoxW, ShaderQBoxH;
float ExitX, ExitY, ExitW, ExitH;
float QuitMenuX, QuitMenuY, QuitMenuW, QuitMenuH;
float QuitYesX, QuitYesY, QuitYesW, QuitYesH;
float QuitNoX, QuitNoY, QuitNoW, QuitNoH;
float QuitQX, QuitQY, QuitQW, QuitQH;
String AX = "x", Yes = "Yes", No = "No", QuestionQuit = "Is it thou deepest desire to quit with haste?";
boolean Quit = false;
//// In Pong
ArrayList<Ball> balls;
int ballCount = 0;
//// For Splash Screen
float ScreenSaverX, ScreenSaverY, ScreenSaverW, ScreenSaverH;
float GameMenuX, GameMenuY, GameMenuW, GameMenuH;
float StartGameX, StartGameY, StartGameW, StartGameH;
float QuitGameX, QuitGameY, QuitGameW, QuitGameH;
//
//ArrayList<Saver> screen;
