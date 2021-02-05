
public int limit = 20;
class sierpinskiProgram {
  
  sierpinskiProgram() {//constructor
    
  }

  public void sierpinski(int x, int y, int len) 
  {
    if (len <= limit) {
      triangle(x, y, x + len, y, x + (len/2), y - len);
    } else {
      sierpinski(x, y, len/2);
      sierpinski(x + (len/2), y, len/2);
      sierpinski(x+(len/4), y-(len/2), len/2);
    }
  }
}
sierpinskiProgram Ari = new sierpinskiProgram();

public void setup()
{
  size(400, 400);
}
public void draw()
{
  Ari.sierpinski(10, 380, 380);
}
public void mouseDragged()//optional
  {
    limit = 400 - mouseX;
    if(limit <= 0) {
     limit = 1; 
    }
      
    //System.out.println(mouseX);
  }

