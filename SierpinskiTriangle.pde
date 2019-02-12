int x = (int)(Math.random()*150)+150;
int y = (int)(Math.random()*150);
int z = (int)(Math.random()*30) +70;
public void setup()
{
  size(300,300);
}
public void draw()
{
  background(0);
  sierpinski(x, y, z);
}
public void mouseDragged()//optional
{
  redraw();
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
      triangle(x,y,x+len,y,x+len/2,y-len);
    }else{
      sierpinski(x,y,len/2);
      sierpinski(x+len/2,y,len/2);
      sierpinski(x+len/4,y-len/2,len/2);
    }
}
