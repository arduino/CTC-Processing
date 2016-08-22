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
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); // Circle according to the mouse coordinates
}
