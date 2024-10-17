float yPos = 0;
float xPos = 0;
float ySpeed = 2;
float xSpeed = 2;
float rCircleFill = 255;
float gCircleFill = 255;
float bCircleFill = 255;

void setup() {
  size(160, 144);
  pixelDensity(2);
}

void draw() {
  background(120);
  
  noStroke();
  fill(rCircleFill, gCircleFill, bCircleFill);
  rectMode(CENTER);
  circle(xPos, yPos, 25);
  
  xPos += xSpeed;
  yPos += ySpeed;

  if (yPos >= height || yPos <= 0) {
    rCircleFill = random(255);
    gCircleFill = random(150, 255);
    bCircleFill = random(255);
    ySpeed *= -1;
  }
  
  if (xPos >= width || xPos <= 0) {
    rCircleFill = random(255);
    gCircleFill = random(150, 255);
    bCircleFill = random(255);
    xSpeed *= -1;
  }
}
