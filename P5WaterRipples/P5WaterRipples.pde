import SimpleOpenNI.*;

SimpleOpenNI kinect;
PImage video,last;float thresh = 45;
PImage bg,diffImg;
PImage img;Ripple ripple;

void setup(){
  img = loadImage("ripple.jpg");
  size(img.width,img.height);
  frameRate(38);

  ripple = new Ripple(img);
  smooth();
}
 
void draw() {
  ripple.draw();
}
 
void mouseMoved() {
  ripple.disturb(mouseX, mouseY);
}

