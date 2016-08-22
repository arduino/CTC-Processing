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
int nY = 0;  // Y coordinate for the square
int aY = 0;  
int aX = 15;
 
void setup() {
  size(400, 400);  
  nY = height - 25;  // Init the coordinate Y for the square to be at the end of the screen
}

void draw() {
  background(200);  
  
  aY = aY + 1;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20));  
  }
  
  fill(255);  // By default fill in the shapes white
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  // Is the circle at the same height as the square?
    if (aX + 10 > nX && aX - 10 < nX + 20) { // Is the circle on top of the square?
      fill(255, 0, 0);  // Change the filling color to red
    } 
  }

  // Lines to understand collision detection
  // uncomment them to test how things work
  //line(0,aY-10,width,aY-10);
  //line(aX-10,0,aX-10,height);
  //line(0,aY+10,width,aY+10);
  //line(aX+10,0,aX+10,height);
  
  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20);    // Include a variable to control the Y coordinate 
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
