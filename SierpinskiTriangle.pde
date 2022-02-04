public void setup()
{
  size(1000,1000);
  background(0);
}
public void draw()
{
  sierpinski(0, height, height);
}
public void mouseDragged()//optional
{
  float holdx = 0;
  holdx = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
  triangle(x,y, x+len, y, x+len/2, y-len);
}
