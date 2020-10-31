// mind_blowing by Rstar37
// https://www.openprocessing.org/sketch/683121
// Fork by Rupert Russell
// Code on Github at: https://github.com/rupertrussell/mind_blowing
// artwork on Redbubble at: https://github.com/rupertrussell/mind_blowing

float angle;
float radius = 300;
float change = 0;
float speed = 1;
void setup() {
  size(800, 800);
  background(128);
  fill(0);
}
void draw() {
  for (int i=0; i < speed; i++) {
    angle+= PI / 102;
    radius=radius / (1 + .001);
    change+= 1;
    noStroke();
    fill(0, 200, 0);
    // text(speed, 0, 10);
    pushMatrix();
    translate(width/2, height/2);
    rotate(angle);
    if (change%8 == 0) {
      fill(255);
    } else if (change%8 == 4) {
      fill(0);
    } else if (change%8 == 1) {
      fill(210, 210, 0);
    } else if (change%8 == 5) {
      fill(50, 50, 255);
    } else {
      noFill();
    }
    ellipse(radius, 0, radius / 5, radius / 3);
    popMatrix();
  }

  if (radius < 7) {
    println("radius = " + radius);
  }
  if (radius < 5) { // Use this for extra large drawings
    noLoop();
    // save("mind_blowing.png");
    // exit();
  }
}
void keyPressed() {
  if (key == 's') {
    save("mind_blowing.png");
  }
  if (key == 't') {
    save("test2.png");
    exit();
  }
}
