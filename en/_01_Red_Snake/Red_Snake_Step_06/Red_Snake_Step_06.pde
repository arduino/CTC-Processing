/*
 * Red Snake 
 *
 * Program to create a red snake moving through the screen
 * 
 * Step 6:
 *  - change the circle size with the time
 *  - just like before, you will need a variable to store the size
 *  - you can use the same function as for the color, but changing the frequency
 *  - for a better visual effect, add transparency to the color
 *
 * (c) 2013 D. Cuartielles, Arduino Verkstad, Sweden 
 */
 
int red = 255;
int time = 0;
int diameter = 50;
 
void setup() {
  size(400, 400);
}

void draw() {
  time = time + 1;     
  red = int(128 * (1 + sin(time * 2 * PI / frameRate / 20))); 
  diameter = int(50 * (1 + sin( time * 2 * PI / frameRate / 5))); // Change the circle's diameter with the time
  
  noStroke();             
  fill(red, 0, 0, 50);  // Add a 50% transparency to the color
  ellipse(mouseX, mouseY, diameter, diameter); 
}
