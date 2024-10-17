float yPos, xPos, ySpeed, xSpeed, rad, radSpeed;

void setup() {
  size(160, 144);
  pixelDensity(2);
  
  ySpeed = 2;
  xSpeed = 2;
  radSpeed = 0.50;
  rad = 25;
  
  yPos = random(rad, height - rad);
  xPos = random(rad, width - rad);
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255);
  
  float minSize = 10;
  float maxSize = 50;
  
  if (yPos >= height || yPos <= 0) {
    ySpeed *= -1;
    radSpeed *= -1;
  }
  
  if (xPos >= width || xPos <= 0) {
    xSpeed *= -1;
    radSpeed *= -1;
  }
  
  circle(xPos, yPos, rad * 2);
  
  yPos += ySpeed;
  xPos += xSpeed;

  rad = constrain(rad + radSpeed, minSize, maxSize);
}
