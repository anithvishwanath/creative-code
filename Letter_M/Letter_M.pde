void setup() {
  size(600, 600);
}

void draw() {
  background(255);

  fill(0);
  push();
  translate(width/2, height/2);
  float diff = 60;
  float x1 = -diff;
  float y1 = -diff;
  float x2 = diff;
  float y2 = diff;
  float x3 = -diff;
  float y3 = diff;

  float a1 = diff;
  float b1 = -diff;
  float a2 = diff;
  float b2 = diff;
  float a3 = -diff;
  float b3 = diff;

  triangle(x1, y1, x2, y2, x3, y3);
  triangle(a1, b1, a2, b2, a3, b3);
  pop();
  saveFrame("output/lettero.png");
}
