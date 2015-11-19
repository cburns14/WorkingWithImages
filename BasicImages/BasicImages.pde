//declare PImage
PImage bird;
float scale = .1;
float sz = 3;

void setup() {
  size(500, 456);

  //load picture into PImage
  bird = loadImage("Bird Flying.jpg");

  //draw image from center
  imageMode(CENTER);

  background(0);
  noStroke();
}

void draw() {
  //set sz based on mouseY
  sz = map(mouseY, 0, height, 1, 20);

  //repeat so more circles are drawn per frame
  for (int i = 0; i < 200; i++) {
    //pick random values for x and y
    int x = int(random(width));
    int y = int(random(height));

    //set fill to the color of the bird image at x,y
    fill(bird.get(x, y));

    //draw an ellipse
    ellipse(x, y, sz, sz);
  }
}