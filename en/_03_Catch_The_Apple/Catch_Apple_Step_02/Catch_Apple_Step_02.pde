/*
* _03_Catch_The_Apple
* 
* Create the game step-by-step, adding complexity as you move along. 
* The aim is for Newton to collect points by getting bumped on the head
* by as many apples as possible in half a minute.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
int nX = 0;
 
void setup() {
  size(400, 400);  // Draw the sketch at a not-too-small size
}

void draw() {
  background(200);  // Clear the screen
  ellipse(15, 15, 20, 20);  
  rect(nX, height - 25, 20, 20);  // Draw Newton with a varaible X coordinate
}

void keyPressed() {
  // If the right key was pressed, increase the X coordinate in 3 units
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // If the left key was pressed, decrease the X coordinate in 3 units
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
}
