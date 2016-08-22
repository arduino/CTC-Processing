/*
* _01_Red_Snake
* 
* How to program a moving object leaving traces of the mouse movement on the screen. 
*       
* (c) 2013-2016 Arduino LLC.
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
