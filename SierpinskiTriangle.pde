public void setup()
{
  size(1000,1000);
  background(0);
}
public void draw()
{
  background(0);
  sierpinski(500, 500, 3*(mouseY-500));
}
public void mouseMoved()//optional
{
  sierpinski(500, 500, 3*(mouseY-500));
}
public void mousePressed()
{
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  sierpinski(500, 500, 3*(mouseY-500));
}
public void sierpinski(int x, int y, int len) 
{
  if(len>=20 || len<=-20)
  {
  triangle(x, y, x+len, y, x+len/2, y+len);
  triangle(x, y, x-len, y, x-len/2, y+len);
  triangle(x, y, x-len/2, y-len, x+len/2, y-len);
  sierpinski(x+len/2,y+len/3,-len/3);
  sierpinski(x-len/2,y+len/3,-len/3);
  sierpinski(x,y-(2*len/3),-len/3);
  }
  else
  {
  triangle(x, y, x+len, y, x+len/2, y+len);
  triangle(x, y, x-len, y, x-len/2, y+len);
  triangle(x, y, x-len/2, y-len, x+len/2, y-len);
  }
}
