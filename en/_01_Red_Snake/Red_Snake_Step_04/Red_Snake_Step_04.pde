/*
* _01_Red_Snake
* 
* How to program a moving object leaving traces of the mouse movement on the screen. 
*       
* (c) 2013-2016 Arduino LLC.
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
