float x1, y1, x2, y2;
float r, g, b;

void setup() {
  size(600, 600);
  pixelDensity(2);
  background(255);
}

void draw() {
  x1 = random(width);
  y1 = random(height);
  x2 = x1 + random(-50, 50);
  y2 = y1 + random(-50, 50);
  
  r = random(255);
  g = random(10, 150);
  b = random(255);
  
  strokeWeight(random(4));
  stroke(r, g, b, random(255));
  // fill(r, g, b);
  // circle(x, y, circleSize);
  line(x1, y1, x2, y2);
}
