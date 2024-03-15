void setup(){
  size(600,600);
}

void draw(){
  background(255);
  
  stroke(#000000);
  strokeWeight(20);
  noFill();
  ellipse(width/2, height/2, 120, 120);
  
  /* Top Line */
  stroke(255);
  strokeWeight(2);
  line(250, 245, 350, 245);
  
  stroke(255);
  strokeWeight(2);
  line(235, 260, 365, 260);
  
  stroke(0);
  strokeWeight(6);
  line(260, 265, 340, 265);
  
  stroke(255);
  strokeWeight(2);
  line(235, 275, 365, 275);
  
  stroke(0);
  strokeWeight(6);
  line(240, 280, 360, 280);
  
  /* Centre line */
  stroke(255);
  strokeWeight(2);
  line(220, 295, 380, 295);
  
  stroke(0);
  strokeWeight(6);
  line(250, 300, 350, 300);
  
  stroke(255);
  strokeWeight(2);
  line(220, 305, 380, 305);
  
  /* Bottom line */
  stroke(0);
  strokeWeight(6);
  line(240, 320, 360, 320);
  
  stroke(255);
  strokeWeight(2);
  line(220, 325, 380, 325);
  
  stroke(0);
  strokeWeight(6);
  line(245, 335, 355, 335);
  
  stroke(255);
  strokeWeight(2);
  line(240, 340, 360, 340);
  
  stroke(255);
  strokeWeight(2);
  line(250, 355, 350, 355);
  
  noStroke();
  fill(255);
  
  ellipse(width/2, height/2, 50, 50);
  
  saveFrame("output/lettero.png");
}
