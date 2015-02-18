// Defines the drawn grid size in pixles. A grid point translates to a single
// pixles in the skibii Bitmap
final int gridSize = 2;

// Bitmap file representing the skibi map
final String skibiiBitmap = "skibi.bmp";

// Basic floor coloring
final color emptyGrid = color(0, 0, 0);     // Color of buildable and walkable areas. Default color
final color wall = color(255, 255, 255);  // Color of non-walkable, and non-buildable spaces
final color notBuildable = color(0, 0, 255);   // Walkable but not buildable

// North runner path colors
final color northSpawner = color(255, 0, 0);  // Creep spawn gate
final color northWaypoint1 = color(255, 255, 0); // Northmost waypoint.
final color northWaypoint2 = color(255, 0, 255); // First waypoint after diagonal
final color northWaypoint3 = color(0, 255, 255); // Center waypoint for north gate
final color northWaypoint4 = color(128, 128, 128); // Final waypoint, end goal

// South runner path colors
final color southSpawner = color(128, 0, 0);  // Creep spawn gate
final color southWaypoint1 = color(128, 128, 0); // Southmost waypoint.
final color southWaypoint2 = color(128, 0, 128); // First waypoint after diagonal
final color southWaypoint3 = color(0, 128, 128); // Center waypoint for south gate
final color southWaypoint4 = color(255, 128, 128); // Final waypoint, end goal
