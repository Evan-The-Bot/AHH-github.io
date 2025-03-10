import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup() {
//
fullScreen();
//
appWidth = displayWidth;
appHeight = displayHeight;
//
functional();
//
//
//playList[] = minum.loadfile( file );
println( file );
//
}
//
void draw() {
rect(BackgroundMenuX, BackgroundMenuY, BackgroundMenuW, BackgroundMenuH);
rect(PongBackdropX, PongBackdropY, PongBackdropW, PongBackdropH);
rect(StopButtonX, StopButtonY, StopButtonW, StopButtonH);
rect(SkipButtonX, SkipButtonY, SkipButtonW, SkipButtonH);
rect(PlayButtonX, PlayButtonY, PlayButtonW, PlayButtonH);
rect(StopButtonX, StopButtonY, StopButtonW, StopButtonH);
rect(SkipButtonX, SkipButtonY, SkipButtonW, SkipButtonH);
rect(PlayButtonX, PlayButtonY, PlayButtonW, PlayButtonH);
rect(FastForwardButtonX, FastForwardButtonY, FastForwardButtonW, FastForwardButtonH);
rect(PauseButtonX, PauseButtonY, PauseButtonW, PauseButtonH);
rect(BarOfVolumeX, BarOfVolumeY, BarOfVolumeW, BarOfVolumeH);
rect(TitleX, TitleY, TitleW, TitleH);
rect(AuthorX, AuthorY, AuthorW, AuthorH);
rect(ImageX, ImageY, ImageW, ImageH);
rect(SIX, SIY, SIW, SIH);
rect(SIIX, SIIY, SIIW, SIIH);
rect(SIIIX, SIIIY, SIIIW, SIIIH);
rect(SongListX, SongListY, SongListW, SongListH);
rect(PlayerIScoreX, PlayerIScoreY, PlayerIScoreW, PlayerIScoreH);
rect(PlayerIIScoreX, PlayerIIScoreY, PlayerIIScoreW, PlayerIIScoreH);
rect(ScoreBoxX, ScoreBoxY, ScoreBoxW, ScoreBoxH);
rect(HeaderX, HeaderY, HeaderW, HeaderH);
rect(ExitX, ExitY, ExitW, ExitH);
}
void mousePressed () {
//
if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH) exit();
//

}
