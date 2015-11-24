//declare PImage
PImage m;
PImage p;
PImage r;
PImage ma;
 
void setup() {
  size(600, 300);
  
  //initialize PImages
  m = loadImage("Mountains.jpg");
  p = loadImage("Patrick.jpg");
  r= loadImage("Rousey.jpg");
  ma = loadImage("Magnifying Glass.jpg");
  
  //blend mountain into Patrick
  p.blend(m, 0, 0, p.width, p.height, 0, 0, m.width, m.height, SOFT_LIGHT);
  
}

void draw() {
  //draw the blended image
 image(p, 0, 0);
 //draw the image
 image(r, 300, 0);
 //filter the images
 filter(GRAY);
 
} 