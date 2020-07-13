float x,y,z;
//PeasyCam cam;
void setup() {
  size(600,600,P3D);
  x = width/2;
  y = height/2;
  z = 0;
  colorMode(HSB);
 // cam = new PeasyCam(this,500);
}

void draw() {
  background(255);
  translate(x,y,0);
  rotateX(z/100);
  rotateY(z/100);
  rotateZ(z/100);
  //side 1
  fill(40,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);
  
  //side2
  translate(0,0,-100);
  fill(80,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);
  //side3
  translate(-50,0,50);
  rotateY(radians(90));
  fill(120,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);
  //side4
  translate(0,0,100);
  //rotateY(radians(90));
  fill(160,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);
  //side5
  rotateZ(radians(90));
  translate(-50,00,-50);
  rotateY(radians(90));
  fill(200,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);
  //side6
  translate(0,0,100);
  //rotateY(radians(90));
  fill(240,255,255);
  rectMode(CENTER);
  rect(0,0,100,100);

  z++; // The rectangle moves forward as z increments.
  if(z>2*314) z = 0;
}
