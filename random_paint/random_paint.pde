float r, g, b;

void setup() {
  size(640, 320);
  pixelDensity(2);
  background(255);
}

void draw() {
  r = random(255);
  g = random(250);
  b = random(150, 255);
  
  fill(r, g, b);
  noStroke();
  circle(mouseX, mouseY, random(50));
}

void mousePressed() {
  background(255);
}
