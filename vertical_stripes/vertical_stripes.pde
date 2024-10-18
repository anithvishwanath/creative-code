float rectWidth, step;

void setup() {
  size(240, 160);
  pixelDensity(2);

  rectWidth = 20;
  step = 40;
}

void draw() {
  background(255);
  noStroke();
  fill(0, 0, 255);
  
  for (int i = 20; i < width; i += step) {
    rect(i, 0, rectWidth, height);
  }
}
