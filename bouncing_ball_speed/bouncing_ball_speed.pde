float yPos, xPos, ySpeed, xSpeed, blockWidth, blockSpeed;

void setup() {
  size(240, 160);
  pixelDensity(2);
  
  ySpeed = 2;
  xSpeed = 2;
  blockSpeed = 0.50;
  blockWidth = 25;
  
  yPos = random(blockWidth, height - blockWidth);
  xPos = random(blockWidth, width - blockWidth);
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255);
  rectMode(CENTER);
  
  float minBlockSpeed = 0.5;
  float maxBlockSpeed = 2.5;
  
  if (yPos <= 0 || yPos >= height) {
    ySpeed *= -1;
    blockSpeed += random(0.5, 1.0);
  }
  
  if (xPos <= 0 || xPos >= width) {
    xSpeed *= -1;
    blockSpeed += random(0.5, 1.0);
  }
  
  yPos += ySpeed * blockSpeed;
  xPos += xSpeed * blockSpeed;
  
  circle(xPos, yPos, blockWidth);
  
  blockSpeed = constrain(blockSpeed, minBlockSpeed, maxBlockSpeed); 
}
