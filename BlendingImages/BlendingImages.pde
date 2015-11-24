//declare PImage
PImage waldo;
PImage tree;
 
void setup() {
  size(800, 600);
  
  //initialize PImages
  waldo = loadImage("Waldo.jpg");
  tree = loadImage("Tree.jpg");
  
  //blend potato into Tardis
  waldo.blend(tree, 0, 0, waldo.width, waldo.height, 0, 0, tree.width, tree.height, HARD_LIGHT);
}

void draw() {
  //draw the blended image
 image(waldo, 0, 0);
} 