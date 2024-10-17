void setup() {
  size(320, 160);
  pixelDensity(2);
}

void draw() {
  background(255);
  rectMode(CENTER);
  fill(175);
  stroke(0);
  strokeWeight(2);
  
  if (mouseY < height / 4) {
    line(120, height / 4, 200, 120);
  } else if (mouseY < height / 2) {
    square(width / 2, height / 2, 80);
  } else if (mouseY < 3 * height / 4) {
    rect(width / 2, height / 2, 160, 80);
  } else {
    circle(width / 2, height / 2, 80);
  }
  
  strokeWeight(1);
  stroke(175);
  line(0, height / 4, width, height / 4);
  line(0, height / 2, width, height / 2);
  line(0, 3 * height / 4, width, 3 * height / 4);
}
