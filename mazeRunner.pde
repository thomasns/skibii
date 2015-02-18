//#include<teenageangst.h>

class mazeRunner { 
  float yPos, xPos, speed, yTarget, xTarget, yWaypoint, xWaypoint;
  color drawColor;
  
  
  mazeRunner(int x, int y) {
    drawColor = color(255,0,0);
    xPos = x;
    yPos = y;
    speed = 2;
  }
  
  void update(byte[][] grid) { 
    if(targetReached(grid)) {
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
  
  boolean waypointReached() {
   return (round(xPos) == round(xWaypoint) && round(yPos) == round(yWaypoint));
  }
  
  
  
  void findTarget(byte[][] grid) {
      //find the point closest to the waypoint that can be reached in a straight line        
      
  }
  
  void findWaypoint(byte[][] grid) {
    //find the  waypoint (2/3) that you aren't standing on
  }
  
} 
