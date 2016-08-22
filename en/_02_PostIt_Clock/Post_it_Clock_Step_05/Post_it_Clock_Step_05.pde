/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[4];   // Make your array bigger for it to contain 4 images
String imFile[] = {"one.jpg", "two.jpg", "three.jpg", "four.jpg"}; 

void setup() {
  size(800, 800);  // Make your sketch bigger to show all the images at once   
  for (int i = 0; i < 4; i = i + 1) {
    im[i] = loadImage(imFile[i]);  // Load images according to the counter 'i'
  }
}

void draw() {
  image(im[0], 0, 0);   // Show the images
  image(im[1], 400, 0);  
  image(im[2], 0, 400);  
  image(im[3], 400, 400);  
}
