/*
* _03_Catch_The_Apple
* 
* Create the game step-by-step, adding complexity as you move along. 
* The aim is for Newton to collect points by getting bumped on the head
* by as many apples as possible in half a minute.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
String[] imFiles = {"fondo.png", "manzana.png", "newton1.png", "newton2.png"};
PImage[] im = new PImage[4];
 
int nX = 0;      // X coordinate, Newton
int nY = 0;      // Y coordinate, Newton
float aY = 0;    // Y coordinate, apples
int aX = 15;     // X coordinate, apples
float aV = 0;    // Y speed, apples
float aA = 0.05; // Y acceleration, apples
int p = 0;       // Points
boolean pCount = true;  // Check whether to count points or not
long t = 0;      // Store the time 

void setup() {
  size(400, 400);  
  nY = height - 135; 
  t = millis();  
  
  // Load the images
  for(int i = 0; i < 4; i = i + 1) {
    im[i] = loadImage(imFiles[i]);
  }
}

void draw() {
  background(200);
  image(im[0], 0, 0, width, height);  // Background image
  
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
  if (aY + 50 > nY && aY < nY + 135) {  
    if (aX + 40 > nX && aX < nX + 128) { 
      fill(255, 0, 0);  
      // If collision increase the points
      if (pCount) p = p + 1;
      pCount = false;  // Whenever you make it at this point, do not 
                       // count any more points
    } 
  }

  image(im[1], aX, aY);  // Apple
  if(pCount) {
    image(im[2], nX, nY);  // Newton looking for apples
  } else {
    image(im[3], nX, nY);  // Newton got an apple
  } 
  
  // Count the time
  float timer = (millis() - t) / 1000;  // Count how much time has passed in seconds

  // GAME OVER
  if (timer >= 30) {  // If time reaches 30 seconds, end the game
    noLoop();
  }

  // Show the time on the screen
  fill(0);
  textSize(20);  // Increase the font size
  text("Time: " + (30 - timer), 10, 20);

  // Show the points on the screen
  fill(0);  
  textSize(20);  // Increase the font size
  text("Hits: " + p, 3 * width / 4, 20); 
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
