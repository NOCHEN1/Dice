void setup(){
  size(510, 570);
  noLoop();
}
void draw(){
  background(209);
  int Sum = 0;
  for(int x = 10; x < 500; x+= 55){
    for(int y = 10; y < 500; y+= 55){
        Die bob = new Die(x, y);
        bob.show();
        if(bob.num == 6){
          Sum = Sum + 6;
        }
        if(bob.num == 5){
          Sum = Sum + 5;
        }
        if(bob.num == 4){
          Sum = Sum + 4;
        }
        if(bob.num == 3){
          Sum = Sum + 3;
        }
        if(bob.num == 2){
          Sum = Sum + 2;
        }
        if(bob.num == 1){
          Sum = Sum + 1;
        }
      }
  }
  textSize(30);
  fill(0, 0, 0);
  text("Sum: " + Sum ,190 , 560);
  fill(255, 255, 255);
}
void mousePressed(){
  redraw();
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
    square(myX, myY, 50);
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
