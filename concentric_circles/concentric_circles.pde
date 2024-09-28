int numCircles = 10;

float minDiameter = 100;
float maxDiameter = 400;
float diameterStep = (maxDiameter - minDiameter) / numCircles;

float maxStroke = 2;
float strokeStep = maxStroke / numCircles;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  noFill();
  
  for (int i = 0; i <= numCircles; i++) {
    float currentDiameter = maxDiameter - i * diameterStep;
    float currentStroke = maxStroke - i * strokeStep;
    strokeWeight(currentStroke);
    stroke(0);
    ellipse(width/2, height/2, currentDiameter, currentDiameter);
  }
}
