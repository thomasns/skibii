// Defines the drawn grid size in pixles. A grid point translates to a single
// pixles in the skibii Bitmap
final int gridSize = 2;

// Bitmap file representing the skibi map
final String skibiiBitmap = "skibi.bmp";

// Basic floor coloring
final color bitmapDefaultColor = color(0, 0, 0);     // Color of buildable and walkable areas. Default color
final color bitmapWallColor = color(255, 255, 255);  // Color of non-walkable, and non-buildable spaces
final color bitmapNoBuildColor = color(0, 0, 255);   // Walkable but not buildable

// North runner path colors
final color northSpawnerColor = color(255, 0, 0);  // Creep spawn gate
final color northWaypoint1Color = color(255, 0, 0); // Northmost waypoint.
final color northWaypoint2Color = color(255, 0, 0); // First waypoint after diagonal
final color northWaypoint3Color = color(255, 0, 0); // Center waypoint for north gate
final color northWaypoint4Color = color(255, 0, 0); // Final waypoint, end goal

// South runner path colors
final color southSpawnerColor = color(255, 0, 0);  // Creep spawn gate
final color southWaypoint1Color = color(255, 0, 0); // Southmost waypoint.
final color southWaypoint2Color = color(255, 0, 0); // First waypoint after diagonal
final color southWaypoint3Color = color(255, 0, 0); // Center waypoint for south gate
final color southWaypoint4Color = color(255, 0, 0); // Final waypoint, end goal
