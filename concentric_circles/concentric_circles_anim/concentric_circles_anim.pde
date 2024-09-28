int numCircles = 10;

float minDiameter = 25;
float maxDiameter = 500;
float diameterStep = (maxDiameter - minDiameter) / numCircles;

float maxStroke = 1.5;
float strokeStep = maxStroke / numCircles;

float speed = 1.0;

void setup() {
  size(600, 600);
  pixelDensity(2);
  frameRate(60);
}

void draw() {
  background(255);
  noFill();
  
  float animatedBaseDiameter = (frameCount * speed) % diameterStep;
  
  for (int i = 0; i <= numCircles; i++) {
    float animatedDiameter = animatedBaseDiameter + i * diameterStep;
   
    float currentStroke = maxStroke - i * strokeStep;
    strokeWeight(currentStroke);
    stroke(0);
    
    ellipse(width / 2, height / 2, animatedDiameter, animatedDiameter);
  }
}
