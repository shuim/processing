void setup(){
  size(480,480);
  frameRate(60);
}

void draw(){
//  translate(mouseX,mouseY);
  float scalar = sqrt((pow(mouseY-height/2,2)+pow(mouseX-width/2,2))/60.0);
  strokeWeight(1.0/scalar);
  float x = mouseX;
  float y = mouseY;
  float rate = scalar/10; 
  
  fill(10*scalar,10*scalar,200-10*scalar);
  rect(x-15*rate,y-15*rate,30*rate,30*rate);
}
