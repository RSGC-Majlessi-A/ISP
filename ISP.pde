float x=500;
float y=500;

void setup(){
  size(1000,1000);
  
  background(255);
}

void draw(){
  noStroke();
  fill(random(255),random(255),random(255));
  
  ellipse(x,y,random(420),random(420) );
  
  x=x+random(-10,10);
  y=y+random(-10,10);
  if (x > 1000){
    x = 500;
  }
  if (y > 1000){
    y = 500;
  }
}

void keyPressed(){
  saveFrame("output-########.png");
  
}