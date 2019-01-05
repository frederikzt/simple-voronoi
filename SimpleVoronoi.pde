ArrayList<Cell> cells = new ArrayList<Cell>();
color backgroundColor = color(0);
int numberOfCells = 100;
float growSpeed = 0.3;

void setup() {
  size(600, 480);
  background(backgroundColor);  
  //Create the desired amount of cell objects
  for (int i = 0; i<numberOfCells; i++) {
    cells.add(new Cell(new PVector(random(width), random(height)), validColor(), backgroundColor, growSpeed));
  }
}

void draw() {
  //Call the update method for all cests
  for (int i=0; i<cells.size(); i++) {
    cells.get(i).update();
  }
}

//Returns a color that is different from the background color
color validColor() {
  color chosenColor = color(random(255), random(255), random(255));
  while (chosenColor==backgroundColor) {
    chosenColor = color(random(255), random(255), random(255));
  }
  return chosenColor;
}
