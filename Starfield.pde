class Particle{
  double myX, myY, myWidth, myHeight;
  double mySpeed, myColor, myOpacity, myAngle;

  Particle(){
    myX = (int)450;
    myY = (int)450;
    myWidth = 5;
    myHeight = 5;
    mySpeed = (int)(Math.random()*10)+1;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myOpacity = 1000;
    myAngle = (int)(Math.random()*361);
  }
  void move(){
    myX = myX + mySpeed*(cos((int)myAngle));
    myY = myY + mySpeed*(sin((int)myAngle));
    if(myX>900){
      myX = 0;
    }
    else if(myX<0){
      myX = 900;
    }
    if(myY>900){
      myY = 0;
    }
    else if(myY<0){
      myY = 900;
    }
  }
  void show(){
    fill((int)myColor, (int)myOpacity);
    ellipse((int)myX,(int)myY,(int)myWidth,(int)myHeight);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX = 450;
    myY = 450;
    myWidth = (int)(Math.random()*80)+100;
    myHeight = myWidth;
    mySpeed = 0.25;
    myColor = color(255,255,220);
    myOpacity = 1000;
    myAngle = (int)(Math.random()*361);
  }
}
OddballParticle s = new OddballParticle();
Particle [] starbits = new Particle[200];
void setup(){
  size(900,900);
  noStroke();
  for(int i = 0; i < starbits.length; i++){
    starbits[i] = new Particle();}
}
void draw(){
  background(0);
  for(int i = 0; i < starbits.length; i++){
    starbits[i].move();
    starbits[i].show();
  }
  s.move();
  s.show();
}


