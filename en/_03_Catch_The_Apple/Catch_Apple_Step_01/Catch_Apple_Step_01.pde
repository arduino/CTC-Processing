/*
* _03_Catch_The_Apple
* 
* Create the game step-by-step, adding complexity as you move along. 
* The aim is for Newton to collect points by getting bumped on the head
* by as many apples as possible in half a minute.
*       
* (c) 2013-2016 Arduino LLC.
*/
 
void setup() {
  size(400, 400);  // Make the screen of an average size
}

void draw() {
  ellipse(15, 15, 20, 20);  // Draw the apple at the top of the screen
  rect(width / 2, height - 25, 20, 20);  // Draw Newton at the bottom of the screen
}
