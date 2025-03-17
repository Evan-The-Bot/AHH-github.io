// Minim Start
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs;
String musicPathway = "music/";
String MusicI = "Helldivers 2  - 8bit of Liber-Tea";
String fileName_mp3 = ".mp3";
String musicDirectory ="../../../" + musicPathway;
String file =musicDirectory + MusicI + fileName_mp3;
// Minim End
int appWidth, appHeight;
float BackgroundMenuX, BackgroundMenuY, BackgroundMenuW, BackgroundMenuH, PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH;
float LoopButtonX, LoopButtonY, LoopButtonW, LoopButtonH, SkipButtonX, SkipButtonY, SkipButtonW, SkipButtonH, PlayButtonX, PlayButtonY, PlayButtonW, PlayButtonH;
float FastForwardButtonX, FastForwardButtonY, FastForwardButtonW, FastForwardButtonH, PauseButtonX, PauseButtonY, PauseButtonW, PauseButtonH, BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH;
float TitleX, TitleY, TitleW, TitleH, AuthorX, AuthorY, AuthorW, AuthorH, ImageX, ImageY, ImageW, ImageH;
float SIX, SIY, SIW, SIH, SIIX, SIIY, SIIW, SIIH, SIIIX, SIIIY, SIIIW, SIIIH, SongListX, SongListY, SongListW, SongListH;
float PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH, PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH;
float ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH, HeaderX, HeaderY, HeaderW, HeaderH, ExitX, ExitY, ExitW, ExitH;
float QuitMenuX, QuitMenuY, QuitMenuW, QuitMenuH, QuitYesX, QuitYesY, QuitYesW, QuitYesH, QuitNoX, QuitNoY, QuitNoW, QuitNoH, QuitQX, QuitQY, QuitQW, QuitQH;
float exitXX, exitXY, exitXW, exitXH;
//
color lightRed = #FF3434, mediumRed = #FA0303, darkRed = #A70F0F, lightOrange = #FFAD29, mediumOrange = #FF7D03, darkOrange = #D15E00, lightYellow = #FEFF00, mediumYellow = #DBD407;
color lightGreen = #75FC00, mediumGreen = #3BEA51, darkGreen = #026F10, greenBlue = #40E0D0, darkGreenBlue = #02C6B1, lightBlue = #50FFF5, mediumBlue = #005EFC, darkBlue = #003EA5, lightPurple = #AA24FF;
color mediumPurple = #9D03FF, darkPurple = #6A03AA, lightPink = #FF58F4, mediumPink = #FF03C5, darkPink = #C60098, black = #000000, white = #FFFFFF, grey = #D6D4D4;
//
boolean Quit = false, MP = true, MusicSelect = false, MusicButtonYes = false;
;
//
