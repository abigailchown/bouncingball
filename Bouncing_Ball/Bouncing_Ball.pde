Ball bouncy;

void setup() {
  
  size(1000, 500);
  bouncy = new Ball(width/2, 60, 2.5, 5);
}

void draw() {
  
  background(#92CFED);
  bouncy.update();
}

