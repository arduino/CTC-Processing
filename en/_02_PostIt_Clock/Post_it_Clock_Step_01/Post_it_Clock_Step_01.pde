/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im;

void setup() {
  size(400, 400);   // We make the sketch the size of the image
  im = loadImage("photo.jpg");  // Image name
}

void draw() {
  image(im, 0, 0);  // To show the image on the screen at the coordinates 0, 0
}
