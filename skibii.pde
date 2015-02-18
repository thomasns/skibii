// 0 -> wall
// 1 -> walkable/buildable
// 2 -> waypoint
// 3 -> waypoint/exit
// 4 -> entrance
// 5 -> walkable not buildable

PImage tower; // used to load Billy's image of the grid

mazeRunner runner = new mazeRunner(30,350);

int gridHeight;
int gridWidth;
byte[][] grid;


void setup() {
  imageToGrid();
  
  size(gridSize * gridWidth, gridSize * gridHeight);
  drawMap();
  runner.draw();

}


void drawMap() {
 background(128,128,0);
  for(int i = 0; i < gridWidth; i++) {
    for(int j = 0; j < gridHeight; j++) {
     
        //set color
        if(grid[i][j] == 1) {fill(0,255,0); stroke(0,255,0);}
        else if(grid[i][j] == 0) {fill(0,0,0); stroke(0,0,0);}
        else if(grid[i][j] == 2) {fill(255,255,255); stroke(255,255,255);}
        else if(grid[i][j] == 3) {fill(255,0,255); stroke(255,0,255);}
        else if(grid[i][j] == 4) {fill(255,255,0);stroke(255,255,0);}
        else {fill(0,0,255); stroke(0,0,255);}
        

        rect(i*gridSize,j*gridSize,gridSize,gridSize);

      
    } 

  } 
}

void imageToGrid() {
   tower = loadImage(skibiiBitmap);
 //int dimension = tower.width * tower.height;
  gridHeight = tower.height;
  gridWidth = tower.width;
  grid = new byte[tower.width][tower.height];

  
  tower.loadPixels();
  
  float r,g,b;
  for(int i = 0; i < gridWidth; i++) {
    for(int j = 0; j < gridHeight; j++) {
      
       r = red(tower.pixels[j * gridWidth + i]);
       g = green(tower.pixels[j* gridWidth + i]);
       b = blue(tower.pixels[j * gridWidth + i]);
       
       if(r == 255.0 && g == 0.0 && b == 0.0)
         grid[i][j] = 4;
       else if(r == 0.0 && g == 0.0 && b == 0.0)
         grid[i][j] = 0;
       else if(r == 255.0 && g == 255.0 && b == 255.0)
         grid[i][j] = 1;
       else if(r == 255.0 && g == 0.0 && b == 255.0)
         grid[i][j] = 2; 
       else if(r == 0.0 && g == 255.0 && b == 0.0)
         grid[i][j] = 3;
       else if(r == 0.0 && g == 0.0 && b == 255.0)
         grid[i][j] = 5;
       else
         print("Found unknown color (" + r +","+ g + "," + b + ") at ["+ i + "][" + j + "]\n");      
    }
    
  }
 
  
}
