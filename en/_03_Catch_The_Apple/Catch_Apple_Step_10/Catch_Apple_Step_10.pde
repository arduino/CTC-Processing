/*
* _03_Catch_The_Apple
* 
* Create the game step-by-step, adding complexity as you move along. 
* The aim is for Newton to collect points by getting bumped on the head
* by as many apples as possible in half a minute.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
int nX = 0;      // X coordinate, Newton
int nY = 0;      // Y coordinate, Newton
float aY = 0;    // Y coordinate, apples
int aX = 15;     // X coordinate, apples
float aV = 0;    // Y speed, apples
float aA = 0.05; // Y acceleration, apples
int p = 0;       // Points
boolean pCount = true;  // Check whether to count points or not
 
void setup() {
  size(400, 400);  
  nY = height - 25; 
}

void draw() {
  background(200);  
  
  // Apple's movement
  aV = aV + aA;  
  aY = aY + aV;  
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20)); 
    aV = 0;   
    // When throwing a new apple it will be possible 
    // to start counting points again
    pCount = true;  
  }
  
  fill(255);

  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  
    if (aX + 10 > nX && aX - 10 < nX + 20) { 
      fill(255, 0, 0);  
      // If collision increase the points
      if (pCount) p = p + 1;
      pCount = false;  // Whenever you make it at this point, do not 
                       // count any more points
    } 
  }

  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20); 

  // Show the points on the screen
  fill(0);  // Text color
  text("Hits: " + p, 3 * width / 4, 20); // Text alligned to the right
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
