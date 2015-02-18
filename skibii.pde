// 0 -> wall
// 1 -> walkable/buildable
// 2 -> waypoint
// 3 -> waypoint/exit
// 4 -> entrance
// 5 -> walkable not buildable

PImage tower; // used to load Billy's image of the grid

mazeRunner runner;

int gridHeight;
int gridWidth;
int[][] grid;


void setup() {
  imageToGrid();
  
  size(gridSize * gridWidth, gridSize * gridHeight);
  drawMap();
  
  // Setup north runner
  int[] northSpawnerPixle = centerOfColor(northSpawner);
  runner = new mazeRunner(northSpawnerPixle[0],northSpawnerPixle[1]);
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

int[] pixleToGrid(int x, int y) {
  int[] gridpoint = new int[2];
  gridpoint[0] = floor(x / gridSize);
  gridpoint[1] = floor(y / gridSize);
  return gridpoint;
    
}

int[] gridToPixle(int x, int y) {
   int[] topLeftPixle = new int[2];
   topLeftPixle[0] = gridSize * x;
   topLeftPixle[1] = gridSize * y;
   return topLeftPixle;
}

// Returns the center pixle of a square of a given color
// Assume a rectangular region of color and selecting the 
// first region of that color top to bottom, left to right
int[] centerOfColor(color target) {
  int[] center = new int[2];
  center[0] = -1;
  center[1] = -1;
  
  // Find the top left most grid of the target color
  int topLeftX = -1;
  int topLeftY = -1;
  boolean topLeftFound = false;
  for(int i = 0; i < gridWidth; i++) {
     for(int j = 0; j < gridHeight; j++) {
       if(grid[i][j] == target) {
         topLeftX = i;
         topLeftY = j;
         topLeftFound = true;
         break;
       }
     }
     if(topLeftFound) {
       break; 
     } 
  }
  
  // Color was not found so return signal error value
  if(!topLeftFound) {
     return center;
  }
  
  // Find the width of the color in grids
  int colorWidth=1;
  while((colorWidth+topLeftX-1) <= gridWidth)
  {
    if(grid[topLeftX + colorWidth][topLeftY] == target) {
       colorWidth++;
    } else {
      break; 
    }
  }
  
  // Find the height of the color in grids
  int colorHeight = 1;
  while((colorHeight+topLeftY-1) <= gridHeight) {
    if(grid[topLeftX][topLeftY + colorHeight] == target) {
       colorHeight++;
    } else {
       break;
    } 
  }
  
  int[] topLeftPixle = gridToPixle(topLeftX, topLeftY);
  int[] bottomRightPixle = gridToPixle(topLeftX+colorWidth-1, topLeftY+colorHeight-1);
  bottomRightPixle[0] = bottomRightPixle[0] + gridSize;
  bottomRightPixle[1] = bottomRightPixle[1] + gridSize;
  
  center[0] = (topLeftPixle[0] + bottomRightPixle[0]) / 2;
  center[1] = (topLeftPixle[1] + bottomRightPixle[1]) / 2;
  return center;
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
