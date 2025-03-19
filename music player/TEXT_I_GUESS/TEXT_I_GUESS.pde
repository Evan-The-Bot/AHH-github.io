fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//String title = "1121231234123451234561234567123456781234567891234567890123456789123456781234567123456123451234123121";
String title = "1";
float rectHeight = appHeight*1/10;
rect(displayWidth*1/4, displayHeight*1/4, displayWidth*1/2, displayHeight*1/2);
//String[] fontList = PFont.list();
//println("Starting of Console");
//printArray(fontList);
int fontSize = appHeight;
PFont titleFont = createFont ("Times New Roman",fontSize);
float fontAspectRation_TimesNewRoman = 84.0 / float(appHeight * 1/10);
//
for (float i = 1.0; fontSize/rectHeight > fontAspectRation_TimesNewRoman; i++) {
  
}
textSize(fontSize);
textFont(titleFont,fontSize);
textAlign(CENTER, TOP);
fill (0);
text(title, displayWidth*1/4, displayHeight*1/4, displayWidth*1/2, displayHeight*1/2);
fill(255);
