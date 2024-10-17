float x, y, angle;

void setup() {
  size(240, 160);
  pixelDensity(2);

  x = width / 3;
  y = height / 3;
  
  angle = 0;
  frameRate(60);
}

void draw() {
  background(0, 0, 255);
  fill(255);
  noStroke();
  rectMode(CENTER);
  
  float offset = sin(angle) * 10;

  if (mouseX < x) {
    circle(width / 2, height / 2, 40 + offset);
  } else if (mouseX < 2 * x) {
    square(width / 2, height / 2, 40 + offset);
  } else {
    float triBase = 40 + offset;
    float triHeight = 40 + offset;
    
    triangle(width / 2 - triBase / 2, height / 2 + triHeight / 2, 
      width / 2 + triBase / 2, height / 2 + triHeight / 2,
      width / 2, height / 2 - triHeight / 2);
  }

  strokeWeight(1);
  stroke(200);
  line(x, 0, x, height);
  line(2 * x, 0, 2 * x, height);
  line(0, y, width, y);
  line(0, 2 * y, width, 2 * y);
  
  angle += 0.03;
}
