/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/


PImage im;
PImage im2;

void setup() {
  size(800, 400);   // Make the sketch twice the image's width
  im = loadImage("photo.jpg");  
  im2 = loadImage("photo2.jpg");  // Load the second image
}

void draw() {
  image(im, 0, 0); 
  image(im2, 400, 0);  // To show the second image use coordinates 400, 0
}
