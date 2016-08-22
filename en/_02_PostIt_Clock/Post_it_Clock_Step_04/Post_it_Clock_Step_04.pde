/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[2]; 
String imFile[] = {"photo.jpg", "photo2.jpg"};  // Array with the file names

void setup() {
  size(800, 400);   
  im[0] = loadImage(imFile[0]);  // Use 'loadImage()' to load the first image file
  im[1] = loadImage(imFile[1]);  // Second image file
}

void draw() {
  image(im[0], 0, 0); 
  image(im[1], 400, 0);  
}
