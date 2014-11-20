int x, y;
int ballSize = 40;
int speed = 5;
boolean movingUp = false;
boolean movingLeft = false;
void setup() {
  size(640, 240); 
 
  
}
void draw() {
  background(500);
  fill(0);
  ellipse(x, y, ballSize, ballSize);

  if (y > height) { 

    movingUp = true;
  }
 if (movingUp) {
    y = y - speed;
  } else {
    y = y + speed;
  }
 if (y < 0) {
    movingUp = false; 
  }
  
  if (x > width) {
    movingLeft = true; 
  }
  if (movingLeft) { 
    x = x - speed;
  }
  else { 
    x = x + speed;
  }
  if (x < 0) {
    movingLeft = false;
  }
    
}
