/*
* _01_Red_Snake
* 
* How to program a moving object leaving traces of the mouse movement on the screen. 
*       
* (c) 2013-2016 Arduino LLC.
*/

int red = 255;
int time = 0;
 
void setup() {
  size(400, 400);
}

void draw() {
  time = time + 1;  // Increase time in one unit
  red = int(128 * (1 + sin(time * 2 * PI / frameRate / 20)));  // Change the color red, repeat every 20s
  
  noStroke();             
  fill(red, 0, 0);          
  ellipse(mouseX, mouseY, 30, 30); 
}
