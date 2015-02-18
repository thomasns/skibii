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
int[][] grid;


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
        fill(grid[i][j]);
        stroke(grid[i][j]);
        rect(i*gridSize,j*gridSize,gridSize,gridSize);
    } 
  } 
}

void imageToGrid() {
   tower = loadImage(skibiiBitmap);
  
  gridHeight = tower.height;
  gridWidth = tower.width;
  grid = new int[tower.width][tower.height];

  tower.loadPixels();
  
  float r,g,b;
  for(int i = 0; i < gridWidth; i++) {
    for(int j = 0; j < gridHeight; j++) {
      grid[i][j] = tower.pixels[j * gridWidth + i];
    }
    
  }
 
  
}
