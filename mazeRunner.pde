//#include<teenageangst.h>

class mazeRunner { 
  float yPos, xPos, speed, yTarget, xTarget;
  color drawColor;
  
  
  mazeRunner(int x, int y) {
    drawColor = color(255,0,0);
    xPos = x;
    yPos = y;
  }
  
  void update() { 
    if(targetReached()) {
      //find new target 
    } else {
      
    } // move towards target
   
  } 
  
  void draw() {
    fill(drawColor);
    stroke(drawColor);
    ellipse(xPos,yPos,2,2);
  }
  
  boolean targetReached() {
   return (round(xPos) == round(xTarget) && round(yPos) == round(yTarget));
  }
  
} 
