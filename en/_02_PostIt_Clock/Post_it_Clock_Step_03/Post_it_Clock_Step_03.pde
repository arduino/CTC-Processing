/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[2]; // Declare an array to contain 2 images

void setup() {
  size(800, 400);   
  // The first image goes into the first position of the array img[]
  im[0] = loadImage("photo.jpg");   
  // The second image goes into the second position of the array
  im[1] = loadImage("photo2.jpg");  
}

void draw() {
  image(im[0], 0, 0); 
  image(im[1], 400, 0);  
}
