float rectWidth, rectHeight, step;

void setup() {
  size(240, 160);
  pixelDensity(2);

  rectWidth = 20;
  rectHeight = 20;
  step = 40;
}

void draw() {
  background(255);
  noStroke();
  fill(0);

  for (int i = 20; i < width; i += step) {
    for (int j = 20; j < height; j += step) {
      rect(0, j, width, rectHeight);
    }
    rect(i, 0, rectWidth, height);
  }
}
