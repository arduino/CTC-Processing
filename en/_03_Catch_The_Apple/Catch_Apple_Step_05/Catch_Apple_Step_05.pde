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
int aY = 0;  
int aX = 15; // Apple's X coordinate
 
void setup() {
  size(400, 400);  
}

void draw() {
  background(200);  
  
  aY = aY + 1;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20));  // Initialize the X coordinate of the apple to a random number
  }
  ellipse(aX, aY, 20, 20);  // Include the changes to the X coordinate to the circle's movement 
  rect(nX, height - 25, 20, 20);  
}

void keyPressed() {
  // Increase the coordinates in 3 pixels
  if (keyCode == RIGHT) {
    nX = nX + 3;
  }
  // Decrease the coordinates in 3 pixels
  if (keyCode == LEFT) {
    nX = nX - 3;
  }
  // Limit the X coordinates
  if (nX < 0) {
    nX = 0;
  }
  if (nX > width - 20) {  
    nX = width - 20;
  }
}
