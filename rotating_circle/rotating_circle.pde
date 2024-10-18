float xPos, yPos, circRad;
float angle = 0;
float rotationRad;

boolean going = false;

void setup() {
  size(240, 160);
  pixelDensity(2);
    
  circRad = random(4, 12);
  rotationRad = random(10, 50);
  
  xPos = width / 2;
  yPos = height / 2;
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255);
  
  float x1 = xPos + cos(angle) * rotationRad; 
  float y1 = yPos + sin(angle) * rotationRad;
  
  circle(x1, y1, circRad * 2);

  angle += 0.05;
}
