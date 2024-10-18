float step;

void setup() {
  size(640, 480);
  //pixelDensity(2);

  step = 20;
}

void draw() {
  background(0, 0, 255);
  stroke(255);
  strokeWeight(2);

  for (int x = 0; x < width; x += step) {
    for (int y = 0; y < height; y += step) {
      float r = random(0, 1.0);
      if (r < 0.5) {
        line(x, y, x + step, y + step);
      } else {
        line(x, y + step, x + step, y);
      }
    }
  }
  noLoop();
}
