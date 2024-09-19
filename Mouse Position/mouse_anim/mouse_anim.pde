void setup(){ 
  size(600, 600);
}

void draw() {
  float centerX = width / 2;
  float centerY = height / 2;
  
  background(150);
  
  fill(250);
  
  // ears
  fill(10);
  triangle(centerX - 20 + mouseX / 10, 170 + mouseY / 10, 100, 120, 160, 270);
  fill (255);
  triangle(centerX + 20 + mouseX / 10, 270 + mouseY / 10, 100, 120, 160, 270);
  
  fill(10);
  triangle(centerX + 20 + mouseX / 10, 170 + mouseY / 10, 500, 120, 440, 270);
  fill(255);
  triangle(centerX - 20 + mouseX / 10, 270 + mouseY / 10, 500, 120, 440, 270);
  
  // face outline
  circle(centerX, centerY, 300);
    
  // eye sockets
  fill(255);
  ellipse(centerX - 60, centerY - 50, 75, 100);
  ellipse(centerX + 60 , centerY - 50, 75, 100);
  
  //constrain(amount, low, high)
  float mouseXRel = constrain(mouseX - (centerX - 60), -5, 5);
  // float mouseYRel = constrain(mouseY - (centerY - 50), -20, 20);

  // outer iris - needs to move
  fill(0, 175, 225);
  ellipse(centerX - 60 + mouseXRel, centerY - 37, 50, 75);
  ellipse(centerX + 60 + mouseXRel, centerY - 37, 50, 75);
  
  // inner iris - needs to move
  fill(0, 125, 225);
  ellipse(centerX - 60 + mouseXRel, centerY - 32, 40, 60);
  ellipse(centerX + 60 + mouseXRel, centerY - 32, 40, 60);
  
  // pupils - needs to move
  fill(10);
  ellipse(centerX - 60 + mouseXRel, centerY - 30, 7, 35);
  ellipse(centerX + 60 + mouseXRel, centerY - 30, 7, 35);
  
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
  
  saveFrame("output/morgana_mp.png");
}
