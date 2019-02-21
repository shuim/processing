Robot bot1;
Robot bot2;

void setup(){
  size(720,480);
  bot1 = new Robot("robot1.svg",90,80);
  bot2 = new Robot("robot2.svg", 440,30);
}

void draw(){
  background(0,153,204);
  
  // display robot1
  bot1.update();
  bot1.display();
 
   // display robot2
  bot2.update();
  bot2.display();
}


class Robot {
  float xpos;
  float ypos;
  float angle;
  PShape botShape;
  float yoffset = 0.0;
  
  // set parameter with constructer
  Robot(String svgName, float tempX, float tempY){
    botShape = loadShape(svgName);
    xpos = tempX;
    ypos = tempY;
    angle = random(0,TWO_PI);
  }    
  
  // update field
  void update(){
    angle += 0.05;
    yoffset = sin(angle) * 20;
  }
  
  // draw robot
  void display(){
    shape(botShape, xpos, ypos + yoffset);
  }
}
    
