class Cell {
  PVector position;
  color cellColor;
  color backgroundColor;
  float distanceFromCenter;
  float growSpeed;

  Cell(PVector position, color cellColor, color backgroundColor, float growSpeed) {
    this.position = position;
    this.cellColor = cellColor;
    this.backgroundColor = backgroundColor;
    distanceFromCenter = 0;
    this.growSpeed = growSpeed;
  }

  void update() {
    //Loop through approximate possible pixels to grow cell in the x direction
    for (int i = int(-distanceFromCenter); i < distanceFromCenter; i++) { 
      //Loop through approximate possible pixels to grow cell in the y direction
      for (int j = int(-distanceFromCenter); j < distanceFromCenter; j++) { 
        if (dist(position.x, position.y, position.x+i, position.y+j)<distanceFromCenter) { //Check if the pixel is within range
          //Check if pixel is equal to the background color
          if (get(int(position.x+i), int(position.y+j))==backgroundColor) {
            //Set color of the pixel and thereby grow cell
            set(int(position.x+i), int(position.y+j), cellColor);
          }
        }
      }
    }
    //Increase the distance from center to make it grow
    distanceFromCenter+=growSpeed;
  }
}
