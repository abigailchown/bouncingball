float x, y;
float ballSize = 40;
float xSpeed = 5, ySpeed = 5;
float gravity = 1;
float braking = 0.09;
boolean movingUp = false;
boolean movingLeft = false;

void setup() {
  size(1000, 500);
}
void draw() {
  background(#92CFED);
  fill(163, 32, 211);
  ellipse(x, y, ballSize, ballSize);

  y = y + ySpeed;
  x = x + xSpeed;
  ySpeed = ySpeed + gravity;

  if (y + ballSize/2 > height) { 
    ySpeed *= -(1 - braking);
    y = height - ballSize/2;
  }

  if (x + ballSize/2 >= width) {
    xSpeed *= -(1 - braking);
    x = width - ballSize/2;
  } else if (x - ballSize/2 <= 0) {
    xSpeed *= -(1 - braking);
    x = ballSize/2;
  }
}


