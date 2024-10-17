float yPos = 0;
float xPos = 0;
float ySpeed = 2;
float xSpeed = 2;

void setup() {
  size(160, 144);
  pixelDensity(2);
}

void draw() {
  background(0, 0, 255);
  
  noStroke();
  fill(255);
  rectMode(CENTER);
  circle(xPos, yPos, 24);
  
  xPos += xSpeed;
  yPos += ySpeed;

  if (yPos >= height || yPos <= 0) {
    ySpeed *= -1;
  }
  
  if (xPos >= width || xPos <= 0) {
    xSpeed *= -1;
  }
}
