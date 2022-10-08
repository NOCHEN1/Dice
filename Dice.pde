int Sum = 0;
void setup(){
  size(510, 570);
  noLoop();
}
void draw(){
  background(#f8f4da);
  noStroke();
  bob.show();
}
void mousePressed(){
  redraw();
  Sum = 0;
}
class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) //constructor
  {
  roll();
  myX = x;
  myY = y;
  }
  void roll(){
    num = (int)(Math.random()*6 + 1);
  }
  void show(){
    rect(myX, myY, 50, 50);
    if(num == 1){
      fill(0);
      ellipse(myX + 25 , myY + 25, 10, 10);
      fill(255);
    }
    if(num == 2){
      fill(0);
      ellipse(myX + 12 , myY + 10, 10, 10);
      ellipse(myX + 38 , myY + 40, 10, 10);
      fill(255);
    }
    if(num == 3){
      fill(0);
      ellipse(myX + 12 , myY + 10, 10, 10);
      ellipse(myX + 38 , myY + 40, 10, 10);
      ellipse(myX + 25 , myY + 25, 10, 10); 
      fill(255);
    }
    if(num == 4){
      fill(0);
      ellipse(myX + 12 , myY + 10, 10, 10);
      ellipse(myX + 38 , myY + 10, 10, 10);
      ellipse(myX + 12 , myY + 40, 10, 10);
      ellipse(myX + 38 , myY + 40, 10, 10);
      fill(255);
    }
    if(num == 5){
      fill(0);
      ellipse(myX + 12 , myY + 10, 10, 10);
      ellipse(myX + 38 , myY + 10, 10, 10);
      ellipse(myX + 12 , myY + 40, 10, 10);
      ellipse(myX + 38 , myY + 40, 10, 10);
      ellipse(myX + 25 , myY + 25, 10, 10);
      fill(255);
    }
    if(num == 6){
    fill(0);
    ellipse(myX + 12 , myY + 10, 10, 10);
    ellipse(myX + 38 , myY + 10, 10, 10);
    ellipse(myX + 12 , myY + 40, 10, 10);
    ellipse(myX + 38 , myY + 40, 10, 10);
    ellipse(myX + 12 , myY + 25, 10, 10);
    ellipse(myX + 38 , myY + 25, 10, 10);
    fill(255);
    }
          
  }
}
