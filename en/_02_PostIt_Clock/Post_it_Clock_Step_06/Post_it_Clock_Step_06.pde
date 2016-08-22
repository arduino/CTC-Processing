/*
* _02_PostIt_Clock
* 
* Create a clock where the numbers are represented by photographs ​of digits made out of Post-its
*       
* (c) 2013-2016 Arduino LLC.
*/

PImage im[] = new PImage[10];   // Array for 10 images
String imFile[] = {"0.jpg", "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.jpg", "9.jpg"}; 

void setup() {
  size(700, 95);  // 10 images of 70 pixels wide and 95 pixels high   
  for (int i = 0; i < 10; i = i + 1) {
    im[i] = loadImage(imFile[i]);  
  }
}

void draw() {
  for (int i = 0; i < 10; i = i + 1) {
    image(im[i], 70 * i, 0);  // Show the images in sequence
  }
}
