PImage bird;

void setup(){
 size(500, 456);
 bird = loadImage("Bird Flying.jpg");
}

void draw(){
  image(bird, 0, 0 );
  filter(GRAY);
}