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
  size(400, 400);  
}

void draw() {
  background(200);  
  ellipse(15, 15, 20, 20);  
  rect(nX, height - 25, 20, 20);  
}

void keyPressed() {
  // Increment the coordinates in 3 
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // Decrement the coordinates in 3 u
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
  // Limit the valu of the X coordinate
  if (nX < 0) {
    nX = 0;
  }
  if (nX > width - 20) {  // Check the size of the square on the right side
    nX = width - 20;
  }
}
