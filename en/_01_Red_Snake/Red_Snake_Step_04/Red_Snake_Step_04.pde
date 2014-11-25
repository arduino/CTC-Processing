/*
 * Red Snake 
 *
 * Program to create a red snake moving through the screen
 * 
 * Step 4:
 *  - chage the level or red with the time
 *
 * (c) 2013 D. Cuartielles, Arduino Verkstad, Sweden 
 */
 
int red = 255;
 
void setup() {
  size(400, 400);
}

void draw() {
  red = red - 1;            // Make the red a little darker
  if (red < 0){
    red = 255;                 // Once it reaches black, make it light red again
  }
  
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); 
}
