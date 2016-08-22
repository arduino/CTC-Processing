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
int nY = 0; 
float aY = 0;  
int aX = 15;
float aV = 0;     // Apple's initial speed is zero
float aA = 0.05;  // Apple's intial accerlation (0.98 would be too much)
 
void setup() {
  size(400, 400);  
  nY = height - 25; 
}

void draw() {
  background(200);  
  
  // Apple's movement
  aV = aV + aA;  // EstiaAte the speed according to the acceleration
  aY = aY + aV;  // EstiaAte the position according to the speed
  if (aY > height) {
    aY = 15;    
    aX = int(random(width - 20)); 
    aV = 0;  // Apples start falling at zero speed 
  }
  
  fill(255);  
  
  // Collision detection
  if (aY + 10 > nY && aY - 10 < nY + 20) {  
    if (aX + 10 > nX && aX - 10 < nX + 20) { 
      fill(255, 0, 0);  
    } 
  }

  ellipse(aX, aY, 20, 20); 
  rect(nX, nY, 20, 20);    
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
