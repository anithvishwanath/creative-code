// random house

void setup() {
  size(600, 600);
  pixelDensity(2);
  frameRate(5);
  noLoop();
}

void draw() {
  // sky
  background(95, 175, 220); 
  rectMode(CORNER);
  
  float x = width / 2;
  float y = height / 2;
  
  // grass
  noStroke();
  fill(25, 145, 85);
  rect(0, y, width, y);
  
  float r = random(100, 255);
  float g = random(150);
  float b = random(255);
  
  float scaleRatio = random(0.2, 1);
  
  float houseWidth = random(150, 400);
  float houseHeight = houseWidth * scaleRatio;
  
  float strokeWght = random(1, 3);
  strokeWeight(strokeWght);
  stroke(0);
  
  //house
  rectMode(CENTER);
  fill(r, g, b);
  rect(x, y, houseWidth, houseHeight);
  
  //roof 1
  float roofHeight = random(houseHeight / 2 + 50, 200);
  fill(225, 95, 45);
  triangle(x - houseWidth / 2, y - houseHeight / 2, x + houseWidth / 2, y - houseHeight / 2, x, y - roofHeight);
  
  //window 1
  float windowWidth = random(10, houseHeight / 3);
  float windowX = random(windowWidth, houseWidth / 2 - windowWidth);
  strokeWeight(2);
  stroke(0);
  fill(255);
  rect(x - windowX, y - houseHeight / 4, windowWidth, windowWidth);
  rect(x + windowX, y - houseHeight / 4, windowWidth, windowWidth);
  line(x - windowX, y - houseHeight / 4 - windowWidth / 2,  x - windowX, y - houseHeight / 4 + windowWidth / 2);
  line(x - windowX - windowWidth / 2, y - houseHeight / 4,  x - windowX + windowWidth / 2, y - houseHeight / 4);
  line(x + windowX, y - houseHeight / 4 - windowWidth / 2,  x + windowX, y - houseHeight / 4 + windowWidth / 2);
  line(x + windowX - windowWidth / 2, y - houseHeight / 4,  x + windowX + windowWidth / 2, y - houseHeight / 4);
  
  //Door
  noStroke();
  fill(random(100, 255), random(100, 255), random(100,255));
  rect(x, y + houseHeight / 4, houseHeight / 4, houseHeight / 2 - strokeWght * 2);
  fill(random(50), random(50), random(50));
  circle(x - houseHeight / 24, y + houseHeight / 4, houseHeight / 12);
}

void mousePressed() {
  redraw();
}
