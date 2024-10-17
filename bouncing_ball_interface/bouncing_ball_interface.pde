float xPos, yPos, xSpeed, ySpeed, circRad;
color col;
boolean going = false;

float colorBtnX, stopBtnX, sizeBtnX;
float buttonSize = 40;
boolean overColorBtn = false;
boolean overStopBtn = false;
boolean overSizeBtn = false;

void setup() {
  size(240, 160);
  // pixelDensity(2);

  circRad = 10;
  xPos = random(circRad, width - circRad);
  yPos = random(circRad, height - circRad);

  xSpeed = random(1, 4);
  ySpeed = random(1, 4);

  colorBtnX = width / 5;
  stopBtnX = width / 2;
  sizeBtnX = 4 * width / 5;

  col = color(random(255), random(255), random(255));
}

void mousePressed() {
  if (overColorBtn) {
    col = color(random(255), random(255), random(255));
  }

  if (overStopBtn) {
    going = !going;
  }

  if (overSizeBtn) {
    circRad = random(10, 50);
  }
}

void draw() {
  background(255);
  noStroke();

  if (going) {
    xPos += xSpeed;
    yPos += ySpeed;
  }

  if (xPos >= width - circRad || xPos < circRad) {
    xSpeed *= -1;
  }

  if (yPos >= height - circRad || yPos < circRad) {
    ySpeed *= -1;
  }

  /* Color Button */
  if (mouseX > colorBtnX - buttonSize / 2 && mouseX < colorBtnX + buttonSize / 2
    && mouseY > height / 2 - buttonSize / 2 && mouseY < height / 2 + buttonSize / 2) {
    overColorBtn = true;
    fill(0);
    square(colorBtnX, height / 2, buttonSize);
  } else {
    overColorBtn = false;
  }

  /* Stop/Start Button */
  if (mouseX > stopBtnX - buttonSize / 2 && mouseX < stopBtnX + buttonSize / 2
    && mouseY > height / 2 - buttonSize / 2 && mouseY < height / 2 + buttonSize / 2) {
    overStopBtn = true;
    fill(0);
    square(stopBtnX, height / 2, buttonSize);
  } else {
    overStopBtn = false;
  }

  /* Size Button */
  if (mouseX > sizeBtnX - buttonSize / 2 && mouseX < sizeBtnX + buttonSize / 2
    && mouseY > height / 2 - buttonSize / 2 && mouseY < height / 2 + buttonSize / 2) {
    overSizeBtn = true;
    fill(0);
    square(sizeBtnX, height / 2, buttonSize);
  } else {
    overSizeBtn = false;
  }

  rectMode(CENTER);
  noFill();
  stroke(0);
  // Buttons
  square(colorBtnX, height / 2, buttonSize);
  square(stopBtnX, height / 2, buttonSize);
  square(sizeBtnX, height / 2, buttonSize);

  // Button labels
  fill(0);
  text("Color", colorBtnX - 15, height / 2 + 40);
  text("Start/Stop", stopBtnX - 25, height / 2 + 40);
  text("Size", sizeBtnX - 10, height / 2 + 40);

  noStroke();
  fill(col);
  circle(xPos, yPos, circRad * 2);
}
