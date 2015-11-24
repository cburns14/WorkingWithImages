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
  
  imageMode(CENTER);
}

void draw() {
  background(0);
  //draw image
  image(waldo, width/2, height/2);
}