void setup(){ 
  size(600, 600);
}

void draw() {
  float centerX = width / 2;
  float centerY = height / 2;
  
  background(150);
  
  fill(250);
  
  // ears
  triangle(centerX - 20 + mouseX / 10, 170 + mouseY / 10, 100, 120, 160, 270);
  triangle(centerX + 20 + mouseX / 10, 270 + mouseY / 10, 100, 120, 160, 270);
  
  triangle(centerX + 20 + mouseX / 10, 170 + mouseY / 10, 500, 120, 440, 270);
  triangle(centerX - 20 + mouseX / 10, 270 + mouseY / 10, 500, 120, 440, 270);
  
  // face outline
  circle(centerX, centerY, 300);
  
  // eye sockets
  fill(255);
  ellipse(centerX - 60, centerY - 50, 75, 100);
  ellipse(centerX + 60 , centerY - 50, 75, 100);
  
  // outer iris - needs to move
  fill(0, 175, 225);
  ellipse(centerX - 60, centerY - 37, 50, 75);
  ellipse(centerX + 60, centerY - 37, 50, 75);
  
  // inner iris - needs to move
  fill(0, 125, 225);
  ellipse(centerX - 60, centerY - 32, 40, 60);
  ellipse(centerX + 60, centerY - 32, 40, 60);
  
  // pupils - needs to move
  fill(10);
  ellipse(centerX - 60, centerY - 20, 7, 35);
  ellipse(centerX + 60, centerY - 20, 7, 35);
  
  // nose 
  fill(10);
  triangle(centerX - 20, centerY + 20, centerX, centerY + 40, centerX + 20, centerY + 20);
  
  // upper mouth
  noFill();
  arc(centerX + 25, centerY + 40, 50, 60, 0, PI);
  arc(centerX - 25, centerY + 40, 50, 60, 0, PI);
  
  // lower mouth
  // fill(10);
  arc(centerX, centerY + 70, 60, 75, 0, PI);
  
  // tongue
  // fill(255, 0, 0);
  // arc(centerX, centerY + 60, 40, 75, PI, 10);
  // ellipse(centerX, centerY + 80, 45, 55);
  
  saveFrame("output/morgana_mp.png");
}
