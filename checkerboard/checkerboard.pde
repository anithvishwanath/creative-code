float spacing;

void setup() {
  size(320, 240);
  //pixelDensity(2);
  
  spacing = 20;
}

void draw() {
  background(255);
  stroke(255);

  for (int j = 0; j < height; j += spacing) {
    for (int i = 0; i < width; i += spacing) {
      fill(random(255));
      square(i, j, spacing);
    }
  }
  
  noLoop();
}
