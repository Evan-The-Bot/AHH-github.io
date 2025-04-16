void ExitDraw() {
  if (MainProgram == true) {
    //
    //// Button Draw
    //
    if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY && Quit == true) {
      fill(darkRed);
    } else {
      fill(mediumRed);
    }
    strokeWeight(5);
    rect(ExitX, ExitY, ExitW, ExitH);
    strokeWeight(1);
    textFont(xFont, xSize);
    textAlign(CENTER, TOP);
    fill(black);
    text(AX, ExitX, ExitY, ExitW, ExitH);
    //
    //// Drawing Quit Menu
    //
    if ( Quit == true ) {
      fill(black, 75);
      rect(ShaderQBoxX, ShaderQBoxY, ShaderQBoxW, ShaderQBoxH);
      //
      fill(white);
      rect(QuitMenuX, QuitMenuY, QuitMenuW, QuitMenuH);
      //
      // Quit Menu Question
      //
      fill(lightYellow);
      rect(QuitQX, QuitQY, QuitQW, QuitQH);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(QuestionQuit, QuitQX, QuitQY, QuitQW, QuitQH);
      //
      // Yes Quit Button
      //
      if (mouseX>QuitYesX && mouseX<=QuitYesX+QuitYesW && mouseY<=QuitYesY+QuitYesH && mouseY>=QuitYesY) {
        fill(darkGreen);
      } else {
        fill(mediumGreen);
      }
      rect(QuitYesX, QuitYesY, QuitYesW, QuitYesH);
      textSize(generalFontSize);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(Yes, QuitYesX, QuitYesY, QuitYesW, QuitYesH);
      //
      // No Quit Button
      //
      if (mouseX>QuitNoX && mouseX<=QuitNoX+QuitNoW && mouseY<=QuitNoY+QuitNoH && mouseY>=QuitNoY) {
        fill(darkRed);
      } else {
        fill(mediumRed);
      }
      rect(QuitNoX, QuitNoY, QuitNoW, QuitNoH);
      textSize(generalFontSize);
      textFont(generalFont, generalFontSize);
      textAlign(CENTER, CENTER);
      fill(black);
      text(No, QuitNoX, QuitNoY, QuitNoW, QuitNoH);
      //
    }
  }
}
void ExitPress() {
  if (MainProgram == true) {
    //
    //Quit Button Function Double Press
    //
    if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY && Quit == false) {
      Quit = true;
    } else {
      if (mouseX>ExitX && mouseX<=ExitX+ExitW && mouseY<=ExitY+ExitH && mouseY>=ExitY && Quit == true) {
        exit();
      }
    }
    if ( Quit == true ) {
      // Quit Yes Function
      if (mouseX>QuitYesX && mouseX<=QuitYesX+QuitYesW && mouseY<=QuitYesY+QuitYesH && mouseY>=QuitYesY) exit();
      // Quit No Function
      if (mouseX>QuitNoX && mouseX<=QuitNoX+QuitNoW && mouseY<=QuitNoY+QuitNoH && mouseY>=QuitNoY) Quit = false;
    }
  }
}
