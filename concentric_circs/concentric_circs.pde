float x, y, dia, step;

void setup() {
  size(320, 240);
  pixelDensity(2);
  
  x = width / 2;
  y = height / 2;
  dia = 200;
  
  step = random(1, 20);
}

void draw() {
  background(255);
  
  stroke(0, 0, 255);
  strokeWeight(2);
  noFill();
  
  for (float i = 0; i < dia; i += step) {
    circle(x, y, dia - i);
  }
}
