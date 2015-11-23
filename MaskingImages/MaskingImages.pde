//declare PImages
PImage waldo;
PImage glass;
 
void setup() {
  
  size(800, 600);
  //initialize PImages
  waldo = loadImage("Waldo.jpg");
  glass = loadImage("Magnifying Glass.jpg");

  //use mask
  waldo.mask(glass);
}

void draw() {
  background(0);
  //draw image
  image(waldo, 150, 110);
}