
class Circle{
  float x;
  float y;
  float radius;
  float maxRadius;
  float increaseRadius;
  int R;
  int G;
  int B;
  
  Circle(){
    x = random(width);
    y = random(height);
    radius = 0;
    maxRadius = random(0,50);
    increaseRadius = random(0.1,1);
    R = (int)random(0,255);
    G = (int)random(0,255);
    B = (int)random(0,255);
  }
  
  void increase(){
    radius = radius+increaseRadius;
    if(radius>maxRadius){
      increaseRadius = -increaseRadius;
    }
    if(radius<=0){
      x = random(width);
      y = random(height);
      radius = 0;
      maxRadius = random(0,50);
      increaseRadius = random(0.1,1);
      R = (int)random(0,255);
      G = (int)random(0,255);
      B = (int)random(0,255);
    }
  }
  void show(){
    //strokeWeight(1); // weight of the drop
    //stroke(0, 0, 0);
    smooth();
    //background(0);
    noStroke();
    fill(R,G,B);
    circle(x,y,radius+5);
    //filter( BLUR, 6 );
    stroke(0);
    fill(R,G,B);
    circle(x,y,radius);
  }
}
