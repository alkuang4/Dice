void setup()
{
  size(400,400);
  background(0);
  noLoop();
  
}
void draw()
{
  background(0);
  int sum=0;
  for(int i=30;i<400;i=i+80){
    for (int j=30;j<400;j=j+80){
      Die bob= new Die(i,j);
      bob.show();
      sum=sum+bob.num;
    }
  }
  fill(240,230,230);
  textSize(30);
  text("The total is: "+sum, 100,340);
}
void mousePressed()
{
  redraw();
}
class Die 
{
  int num,myX,myY,dieSize;  
  Die(int x, int y)
  {
    num=(int)((Math.random())*6+1);
    myX=x;
    myY=y;
    dieSize=40;
    roll();
  }
  void roll()
  {
    
    num=(int)((Math.random())*6+1);
  }
  void show()
  {
    //your code here
    fill(210,250,40);
    noStroke();
    rect(myX,myY,dieSize,dieSize);
    fill(0);
    if(num==6){
      ellipse(myX+10,myY+9,3,3);
      ellipse(myX+10,myY+19,3,3);
      ellipse(myX+10,myY+29,3,3);
      ellipse(myX+20,myY+9,3,3);
      ellipse(myX+20,myY+19,3,3);
      ellipse(myX+20,myY+29,3,3);
    }
    else if(num==5){
      ellipse(myX+10,myY+9,3,3);
      ellipse(myX+10,myY+19,3,3);
      ellipse(myX+10,myY+29,3,3);
      ellipse(myX+20,myY+9,3,3);
      ellipse(myX+20,myY+19,3,3);
    }
    else if(num==4){
      ellipse(myX+10,myY+9,3,3);
      ellipse(myX+10,myY+19,3,3);
      ellipse(myX+20,myY+9,3,3);
      ellipse(myX+20,myY+19,3,3);
    }
    else if(num==3){
      ellipse(myX+10,myY+9,3,3);
      ellipse(myX+10,myY+19,3,3);
      ellipse(myX+20,myY+9,3,3);
   }
   else if(num==2){
      ellipse(myX+10,myY+9,3,3);
      ellipse(myX+20,myY+9,3,3);
   }
   else if(num==1){
    ellipse(myX+10,myY+9,3,3);
  }
 
  }
}
