float rectHeight, step;

void setup() {
  size(240, 160);
  pixelDensity(2);

  rectHeight = 20;
  step = 40;
}

void draw() {
  background(255, 0, 255);
  noStroke();
  fill(0, 0, 255);
  
  for (int i = 20; i < height; i += step) {
    rect(0, i, width, rectHeight);
  }
}
