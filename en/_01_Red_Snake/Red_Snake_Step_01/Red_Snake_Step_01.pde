/*
* _01_Red_Snake
* 
* How to program a moving object leaving traces of the mouse movement on the screen. 
*       
* (c) 2013-2016 Arduino LLC.
*/
 
void setup() {
  size(400, 400);
}

void draw() {
  noStroke();                // Draw borderless shapes
  fill(255, 0, 0);           // Fill shapes with pure red color
  ellipse(100, 100, 30, 30); // Circle of 30 pixels diameter
}
