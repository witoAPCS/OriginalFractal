 public void setup()
{
 size(900,900); 
}
public void draw()
{
  for(int balls = 0; balls < 100; balls++){
    for(int j = 0; j < 100; j++){
    noStroke();
    fill(balls+20,j+20,130);
    ellipse(balls * 10,j * 10,20,20);
    }
  }
  int balls = color(173, 216, 230);
  squares(100,100,340,balls); 
   
 }

 public void squares(int x, int y, int side, int Color){
  if(side <= 2) return;
      fill(Color);

  rect(x,y,side,side);

  
  squares(x,y,side/2,Color*side);
  squares(x,y+side,side/2,Color*side);
  squares(x+side,y,side/2,Color*side);
  squares(x+side,y+side,side/2,Color*side);
 }
