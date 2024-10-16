float x, y, dia;
float radius;
float distance;
float sw;
float r, g, b;

void setup() {
  size(320, 160);
  pixelDensity(2);
  
  x = width / 2;
  y = height / 2;
  dia = 80;
  radius = dia / 2;
  
  sw = random(4);
  
  r = random(255);
  g = random(150, 255);
  b = random(255);
}

void draw() {
  background(255);
  strokeWeight(sw);
  
  distance = dist(x, y, mouseX, mouseY);
  if (distance > radius) {
    fill(175);
  } else {
    fill(r, g, b);
  }
  
  circle(x, y, dia);
}

void mousePressed() {
  redraw();
}
