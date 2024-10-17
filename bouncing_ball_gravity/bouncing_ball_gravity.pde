float xPos, yPos, ySpeed, yAccelerate, circRad;
boolean isGoing = false;

void setup() {
  size(160, 144);
  pixelDensity(2);
  
  circRad = 10;
  xPos = width / 2;
  yPos = height / 12;
  
  ySpeed = 3;
  yAccelerate = 0.5; // gravity
}

void draw() {
  background(0, 0, 255);
  noStroke();
  
  if(isGoing) {
    ySpeed += yAccelerate;
    yPos += ySpeed;
  }
  
  if (yPos < circRad || yPos > height - circRad) {
    ySpeed *= -0.85;
    yPos = height - circRad;
  }
  
  fill(255);
  circle(xPos, yPos, circRad * 2);
}

void mousePressed() {
  isGoing = !isGoing;
}
