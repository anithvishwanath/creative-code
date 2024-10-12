PImage img;
int blockSize = 20;
float noiseScale = 0.02; // Noise scale for smooth noise effect
float displacementStrength = 120; // Strength of displacement

void setup() {
  size(600, 600);
  img = loadImage("IMG_3578.png"); // Load your image file
  img.resize(width, height); // Ensure it matches canvas size
  noLoop(); // Only need to draw once
}

void draw() {
  PImage painterlyResult = createImage(width, height, RGB);
  
  // Loop over every pixel in the image
  for (int y = 0; y < height; y += blockSize) {
    for (int x = 0; x < width; x += blockSize) {
      
      // Generate noise-based offsets for x and y (two noise fields)
      float noiseX = noise(x * noiseScale, y * noiseScale);
      float noiseY = noise(x * noiseScale + 10000, y * noiseScale + 10000); // Offset for second field
      
      // Calculate displacement
      int displacedX = int(x + (noiseX - 0.5) * displacementStrength);
      int displacedY = int(y + (noiseY - 0.5) * displacementStrength);
      
      // Ensure displaced coordinates are within bounds
      displacedX = constrain(displacedX, 0, width - blockSize);
      displacedY = constrain(displacedY, 0, height - blockSize);
      
      color avgColor = getAverageColor(displacedX, displacedY, blockSize);
      
      painterlyResult.set(x, y, avgColor);
      
      for (int dy = 0; dy < blockSize; dy++) {
        for (int dx = 0; dx < blockSize; dx++) {
          if (x + dx < width && y + dy < height) {
            painterlyResult.set(x + dx, y + dy, avgColor);
          }
        }
      }
    }
  }

  // Display the result
  image(painterlyResult, 0, 0);
}

color getAverageColor(int startX, int startY, int size) {
  int r = 0, g = 0, b = 0;
  int count = 0;
  
  for (int y = startY; y < startY + size; y++) {
    for (int x = startX; x < startX + size; x++) {
      if (x < width && y < height) { // Ensure we don't go out of bounds
        color c = img.get(x, y);
        r += red(c);
        g += green(c);
        b += blue(c);
        count++;
      }
    }
  }
  
  return color(r / count, g / count, b / count); // Return the average color
}
