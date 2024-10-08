void setup() {
  size(600, 600);
}

void draw() {
  background(255); 
  
  // Calculate the center of the screen
  float centerX = width / 2;
  float centerY = height / 2;

  fill(0, 0, 0);
  noStroke();

  float verticalOffset = -40;

  quad(centerX, centerY - 85 + verticalOffset,   // Top vertex
       centerX - 70, centerY + verticalOffset,   // Left vertex
       centerX, centerY + 65 + verticalOffset,   // Bottom vertex
       centerX + 70, centerY + verticalOffset);  // Right vertex
  
  fill(0, 0, 0);

  beginShape();
  vertex(centerX - 80, centerY + 10 + verticalOffset);   // Left vertex
  vertex(centerX - 140, centerY + 80 + verticalOffset);  // Bottom-left vertex
  vertex(centerX, centerY + 185 + verticalOffset);       // Bottom vertex (point of the V)
  vertex(centerX + 140, centerY + 80 + verticalOffset);  // Bottom-right vertex
  vertex(centerX + 80, centerY + 10 + verticalOffset);   // Right vertex
  vertex(centerX, centerY + 80 + verticalOffset);        // Middle vertex connecting V
  endShape(CLOSE);
  
  //drawGrid();
  
  saveFrame("output/av-logo.png");
}

//void drawGrid() {
//  noFill();
//  stroke(0, 175, 0, 150); 
//  for (int x = 0; x <= width; x += 20) {
//    line(x, 0, x, height);  // Vertical lines
//  }
//  for (int y = 0; y <= height; y += 20) {
//    line(0, y, width, y);   // Horizontal lines
//  }
//}
