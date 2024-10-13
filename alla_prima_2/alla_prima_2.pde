/* Oil Painting Algorithm: http://supercomputingblog.com/graphics/oil-painting-algorithm/ */

PImage img;
int radius = 5;
int intensityLevels = 20;

void setup() {
  pixelDensity(2);
  size(800, 800);
  img = loadImage("IMG_4154.png");
  img.resize(width, height);
  noLoop();
}

void draw() {
  img.loadPixels();
  PImage output = createImage(img.width, img.height, RGB);
  output.loadPixels();
  
  // looping through each pixel in the img
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      int[] intensityCount = new int[intensityLevels];
      float[] averageR = new float[intensityLevels];
      float[] averageG = new float[intensityLevels];
      float[] averageB = new float[intensityLevels];
      
      int lowX;
      if (x - radius >= 0) {
        lowX = x - radius;
      } else { 
        lowX = 0;
      }
      
      int highX;
      if (x + radius < img.width) {
        highX = x + radius;
      } else {
        highX = img.width - 1;
      }
      
      int lowY;
      if (y - radius >= 0) {
        lowY = y - radius;
      } else {
        lowY = 0;
      }
      
      int highY;
      if (y + radius < img.height) {
        highY = y + radius;
      } else {
        highY = img.height - 1;
      }

      // Step 1: For each sub-pixel, calculate the intensity and determine
      // which intensity bin that intensity number falls into.
      // Maintain a counter for each intensity bin which will count
      // the number of sub-pixels which fall into each intensity bin.
      // Also maintain the total red, green, and blue values for each bin
      for (int i = lowX; i <= highX; i++) {
        for (int j = lowY; j <= highY; j++) {
          int neighborX = constrain(i, 0, img.width - 1);
          int neighborY = constrain(j, 0, img.height - 1);
          color neighborColor = img.pixels[neighborX + neighborY * img.width];

          float r = red(neighborColor);
          float g = green(neighborColor);
          float b = blue(neighborColor);
          float intensity = (r + g + b) / 3.0;

          int curIntensity = int((intensity * intensityLevels) / 255.0);
          curIntensity = constrain(curIntensity, 0, intensityLevels - 1);
          
          intensityCount[curIntensity]++;
          averageR[curIntensity] += r;
          averageG[curIntensity] += g;
          averageB[curIntensity] += b;
        }
      }

      // Step 2: Find the maximum level of intensity
      int curMax = 0;
      int maxIndex = 0;
      for (int k = 0; k < intensityLevels; k++) {
        if (intensityCount[k] > curMax) {
          curMax = intensityCount[k];
          maxIndex = k;
        }
      }

      // Step 3: calculate the final value
      float finalR;
      if (curMax > 0) {
        finalR = averageR[maxIndex] / curMax;
      } else {
        finalR = red(img.pixels[x + y * img.width]);
      }

      float finalG;
      if (curMax > 0) {
        finalG = averageG[maxIndex] / curMax;
      } else {
        finalG = green(img.pixels[x + y * img.width]);
      }

      float finalB;
      if (curMax > 0) {
        finalB = averageB[maxIndex] / curMax;
      } else {
        finalB = blue(img.pixels[x + y * img.width]);
      }
      
      color finalColor =  color(finalR, finalG, finalB);

      output.pixels[x + y * img.width] = color(finalR, finalG, finalB);
    }
  }

  output.updatePixels();
  image(output, 0, 0);
  filter(BLUR);
}
