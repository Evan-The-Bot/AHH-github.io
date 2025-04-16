void PongSetup() {
  // Creates Ball Array
  if (MainProgram == true) {
    balls = new ArrayList<Ball>();
    //
    // Alows counter to work
    ballCount = 0;
    //
  }
}
void PongDraw() {
  if (MainProgram == true) {
    // Ball counter
    fill(white);
    text("Ball Counter: " + ballCount, HeaderX * 12/9, TopRowButtonsY * 3/2);
    //
    // Check collision of one ball
    for (int i = 0; i < balls.size(); i++) {
      Ball b = balls.get(i);
      b.PongUpdate();
      b.PongDisplay();
      //
      // Check for collisions with other balls
      for (int j = i + 1; j < balls.size(); j++) {
        Ball other = balls.get(j);
        b.checkCollision(other);
      }
    }
  }
}
// Makes Ball Constantly Update Using Local Varibles
class Ball {
  float x, y;
  float vx, vy;
  float radius = random(10, 20);
  boolean isClipping = false;
  //
  // Allows Updates to Ball Movement
  Ball(float x, float y) {
    this.x = x;
    this.y = y;
    this.vx = random(-5, 5);
    this.vy = random(-5, 5);
  }
  //
  void PongUpdate() {
    if (MainProgram == true) {
      if (!isClipping) {
        //
        //////// vy += 0.2; // Apply gravity not needed for pong ball
        //
        x += vx;
        y += vy;
        //
        // Reverse momentum Right
        if ( x + radius > PongBackdropX + PongBackdropW) {
          vx *= -1;
          x += -5;
        }
        // Reverse momentum Left
        if (x - radius < PongBackdropX) {
          vx *= -1;
          x += +5;
        }

        // Stops clipping floor
        if (y + radius > PongBackdropY + PongBackdropH) {
          y = PongBackdropY + PongBackdropH - radius;
          ////// vy *= -0.8; // Slows ball Y Use for Gravity
          ////// vx *= 0.9; // Slows ball X use for Gravity
          vy *= -1; // Use for Pong
        }
        // Stops clipping ceiling
        if (y - radius < PongBackdropY) {
          y = PongBackdropY + radius;
          vy *= -1;
        }
      }
    }
  }
  //
  void PongDisplay() {
    fill(darkPurple);
    ellipse(x, y, radius * 2, radius * 2);
  }
  //
  void checkCollision(Ball other) {
    // Calculate the distance between the two balls
    float dx = other.x - x;
    float dy = other.y - y;
    float distance = sqrt(dx * dx + dy * dy);
    // Check if the balls are colliding
    if (distance < radius * 2) {
      // Resolve overlap by moving the balls apart
      float overlap = radius * 2 - distance;
      float angle = atan2(dy, dx);
      float moveX = cos(angle) * overlap / 2;
      float moveY = sin(angle) * overlap / 2;
      //
      x -= moveX;
      y -= moveY;
      other.x += moveX;
      other.y += moveY;
      //
      // Swap velocities for a simple elastic collision
      float tempVx = vx;
      float tempVy = vy;
      vx = other.vx;
      vy = other.vy;
      other.vx = tempVx;
      other.vy = tempVy;
    }
  }
}
//
void PongKeyKong() {
  //
  if ( key == 'r' || key == 'R' ) {
    balls.clear();
    ballCount = 0;
  }
  //
  if (MainProgram == true && Quit == false && key == 'b' || key == 'B' ) {
    // Add a new ball at the mouse position when mouse is there
    balls.add(new Ball(appWidth * 1/2, appHeight * 1/2));
    ballCount = balls.size();
  }
  //
}
//
