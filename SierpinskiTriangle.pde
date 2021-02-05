class sierpinskiRing {

  public void sierpinski(int x, int y, int max, int min,int red, int green) {
    //Changes shade of blue each recursion
    fill(red,green,255);
    //displays current recursion shape
    ellipse(x,y,max,max);
    //checks if there is another possible recursion
    if(max >= min) {
      //adjusts shape and declares next recursion 
     sierpinski(x-(max/4),y,max/2,min, red + 20, green + 20); 
    }
    
      
      
    }
  }

sierpinskiRing Ari = new sierpinskiRing();
public void setup() {
  size(400, 400);
  noStroke();
}
public void draw() {
  Ari.sierpinski(200, 200, 400,10,0,162);
  //ellipse(200,200, 100, 100);
}
