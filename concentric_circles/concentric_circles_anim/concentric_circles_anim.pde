int numCircles = 10;

float minDiameter = 1;
float maxDiameter = 800;
float diameterStep = (maxDiameter - minDiameter) / numCircles;

float maxStroke = 5;
float strokeStep = maxStroke / numCircles;

float speed = 1.5;

int totalFrames = 120;
int currentFrame = 0;

void setup() {
  size(1000, 1000);
  pixelDensity(2);
  frameRate(60);
}

void draw() {
  background(255);
  noFill();
  
  float animatedBaseDiameter = (currentFrame * speed * (diameterStep / totalFrames)) % diameterStep;
  // float animatedBaseDiameter = (frameCount * speed) % diameterStep;
  
  for (int i = 0; i < numCircles; i++) {
    float animatedDiameter = animatedBaseDiameter + i * diameterStep;
    float currentStroke = maxStroke - i * strokeStep;
    
    float alpha = map(animatedDiameter, maxDiameter, minDiameter, 0, 255);
    alpha = constrain(alpha, 0, 255);
    
    strokeWeight(currentStroke);
    stroke(0, alpha);
    
    ellipse(width / 2, height / 2, animatedDiameter, animatedDiameter);
  }
  
  if (currentFrame < totalFrames) {
    saveFrame("output/frame-####.png");
  }
  
  currentFrame++;
  
  if (currentFrame >= totalFrames) {
    noLoop();
  }
}
