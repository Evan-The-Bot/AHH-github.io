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
//
boolean Quit = false, MP = true;
