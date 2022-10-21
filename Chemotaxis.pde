Spider[] sal = new Spider[12];
float newX;
float newY; 
float newScale;
int detColor = 0;
color newColor;

void setup() {
  size(400, 400);
  for (int i = 0; i < sal.length; i++){
  newX = (float)((Math.random()*350)+25);
  newY = (float)((Math.random()*350)+25);
  newScale = (float)(Math.random())+1;
  if (detColor<3){
    newColor = color(0);
    detColor+=1;
  }
  else if (detColor==3){
    newColor = color(130,5,255);
    detColor+=1;
  }
  else if(detColor==4){
    newColor = color(255,140,5);
    detColor=0;
  }
  sal[i] = new Spider(newX, newY, newScale, newColor);
}
}

void draw() {
background(100);
    for (int i = 0; i < sal.length; i++){
    sal[i].show();
    sal[i].move();
    }

}

class Spider {
  float myX, myY, myS;
  color myC;
  Spider(float x, float y, float scale, color myColor) {
    myY = y;
    myX = x;
    myS = scale;
    myC = myColor;
  }
  void show() {
    stroke(myC);
    fill(myC);
    //body
    ellipse(myX, myY, 40*myS, 30*myS);
    //top legs, right then left
    line(myX+(15*myS), myY-(10*myS), myX+(30*myS), myY-(20*myS));
    line(myX+(30*myS), myY-(20*myS), myX+(45*myS), myY-(10*myS));
    line(myX-(15*myS), myY-(10*myS), myX-(30*myS), myY-(20*myS));
    line(myX-(30*myS), myY-(20*myS), myX-(45*myS), myY-(10*myS));
    //2nd highest legs
    line(myX+(15*myS), myY-(5*myS), myX+(30*myS), myY-(15*myS));
    line(myX+(30*myS), myY-(15*myS), myX+(45*myS), myY-(5*myS));
    line(myX-(15*myS), myY-(5*myS), myX-(30*myS), myY-(15*myS));
    line(myX-(30*myS), myY-(15*myS), myX-(45*myS), myY-(5*myS));
    //3rd highest legs
    line(myX+(15*myS), myY-(0*myS), myX+(30*myS), myY-(10*myS));
    line(myX+(30*myS), myY-(10*myS), myX+(45*myS), myY-(0*myS));
    line(myX-(15*myS), myY-(0*myS), myX-(30*myS), myY-(10*myS));
    line(myX-(30*myS), myY-(10*myS), myX-(45*myS), myY-(0*myS));
    //lowest legs
    line(myX+(15*myS), myY-(-5*myS), myX+(30*myS), myY-(5*myS));
    line(myX+(30*myS), myY-(5*myS), myX+(45*myS), myY-(-5*myS));
    line(myX-(15*myS), myY-(-5*myS), myX-(30*myS), myY-(5*myS));
    line(myX-(30*myS), myY-(5*myS), myX-(45*myS), myY-(-5*myS));
  }
  

  void move() {
  if (mouseX>myX)
    myX += (float)(Math.random()*4)-1;
  else
    myX += (float)(Math.random()*4)-3;
  if(mouseY>myY)
    myY += (float)(Math.random()*4)-1;
   else
    myY += (float)(Math.random()*4)-3;
  }  
  }
