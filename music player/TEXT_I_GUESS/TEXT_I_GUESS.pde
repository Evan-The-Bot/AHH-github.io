fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//String title = "1121231234123451234561234567123456781234567891234567890123456789123456781234567123456123451234123121";
String title = "1";
float rectHeight = appHeight*1/10;
float rectWidth = appWidth*1/2;
rect(appWidth*1/4, appHeight*1/4, rectWidth, rectHeight);
//String[] fontList = PFont.list();
//println("Starting of Console");
//printArray(fontList);
float fontSize = float(appHeight);
PFont titleFont = createFont ("Times New Roman",fontSize);
int iterationCounter=0;
//
float fontAspectRation_TimesNewRoman = 85.0 / float(appHeight * 1/10);
float accuracy = 0.01;
for (float i = 1.0; fontSize/rectHeight > fontAspectRation_TimesNewRoman; i=1-accuracy) {
  fontSize = fontSize*i;
  //
  iterationCounter++;
  println("For " + fontSize + "  " + iterationCounter);
  //
}
textSize(fontSize);
println(textWidth(title), rectWidth );
for (float i=1.0; textWidth(title)>rectWidth ; i=1-accuracy ) {
 println("inside");
fontSize = fontSize * i;
textSize(fontSize);
}
textSize(fontSize);
textFont(titleFont,fontSize);
textAlign(CENTER, TOP);
fill (0);
text(title, displayWidth*1/4, displayHeight*1/4, displayWidth*1/2, displayHeight*1/2);
fill(255);
