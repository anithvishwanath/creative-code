float tl = 0;
float tr = 0;
float bl = 0;
float br = 0;

float w, h;

void setup() {
  size(320, 160);
  pixelDensity(2);
}

void draw() {
  background(0);
  fill(255);
  
  w = width / 2;
  h = height / 2;
  
  if (mouseX < w && mouseY < h) {
    tl = 255;
  } else if (mouseX > w && mouseY < h) {
    tr = 255;
  } else if (mouseX < w && mouseY > h) {
    bl = 255;
  } else {
    br = 255;
  }
  
  fill(tl);
  rect(0, 0, w, h);
  fill(tr);
  rect(w, 0, w, h);
  fill(bl);
  rect(0, h, w, h);
  fill(br);
  rect(w, h, w, h);
  
  tl -= 5;
  tr -= 5;
  bl -= 5;
  br -= 5;
  
  strokeWeight(4);
  stroke(255);
  line(w, 0, w, height);
}
