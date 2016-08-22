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
  size(140, 95);  // 2 digits of 70x95 pixels
  for (int i = 0; i < 10; i = i + 1) {
    im[i] = loadImage(imFile[i]);  
  }
}

void draw() {
  int h = hour();             // Take the hour from the computer and store it into a variable
  int h_dec = int(h / 10);    // Get the most significant digit
  int h_uni = h - h_dec * 10; // Get the least significant digit
  
  image(im[h_dec], 0, 0);     // Show the most significant digit
  image(im[h_uni], 70, 0);    // Show the least significant digit
}
