float x = 500; //setting value for float x
float y = 500; //setting value for float y
float x1 = 500; //setting value for float x1
float y1 = 500; //setting value for float y1 
void setup() {
  size(1000, 1000);
  frameRate(10000);
  background(255);
}
void draw() {
  noStroke();
  fill(random(255), random(255), random(255));

  ellipse(x, y, random(420), random(420) );

  x=x+random(-30, 30);
  y=y+random(-30, 30);
  if (x > 1000) {
    x = 500;
  }
  if (y > 1000) {
    y = 500;
  }

  if (y < 0) {
    y = 500;
  }

  if (x < 0) {
    x = 500;
  }

  stroke(random(255), random (255), random (255));// set random color 
  line(x, y, random(50), random(50)); //code for creating random lines  from left side 
  x=x+random(-30, 30); // making space between lines 
  println(x);
  y=y+random(-30, 30);// making space between lines 

  stroke(random(255), random (255), random (255));// set random color 
  line(x1, y1, random(950), 0); //code for creating the random lines from right side 
  x1=x1+random(-30, 30);// making space between lines 
  y1=y1+random(-30, 30);// making space between lines 



  // all the staements below prevent the lines from going off screen
  if (x > 1000) {
    x = 500;
  }
  if (y > 1000) {
    y = 500;
  }

  if (y < 0) {
    y = 500;
  }

  if (x < 0) {
    x = 500;
  }

  if (x1 > 1000) {
    x = 500;
  }
  if (y1 > 1000) {
    y = 500;
  }

  if (y1 < 0) {
    y = 500;
  }

  if (x1 < 0) {
    x = 500;
  }
}





void keyPressed() {
  saveFrame("output-########.png");
}