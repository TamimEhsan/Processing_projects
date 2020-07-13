float r3 = 70;
float a3 = 0;
float m3 = 10;
float r1 = 100;
float a1 = 0;
float m1 = 10;
float r2 = 100;
float a2 = 0;
float m2 = 5;
int R = 0;
int G = 85;
int B = 170;

PGraphics canvas;

void setup(){
  size(600,600);
  canvas = createGraphics(600,600);
  canvas.beginDraw();
  canvas.background(0);
  canvas.endDraw();
}

void draw(){
  //background(255);
  image(canvas,0,0);
  stroke(255);
  strokeWeight(2);
  float x1 = r1 * sin(a1)+width/2;
  float y1 = r1 * cos(a1)+height/2;
  float x2 = r2 * sin(a2)+x1;
  float y2 = r2 * cos(a2)+y1;
  float x3 = r3 * sin(a3)+x2;
  float y3 = r3 * cos(a3)+y2;
  line(width/2,height/2,x1,y1);
  line(x1,y1,x2,y2);
  line(x3,y3,x2,y2);
  fill(0);
  ellipse(x1,y1,m1,m1);
  ellipse(x2,y2,m2,m2);
 ellipse(x3,y3,m3,m3);
  a1+=0.9;
  a2+=0.5;
  a3+=0.1;
  canvas.beginDraw();
  canvas.stroke(R,G,B);
  canvas.strokeWeight(5);
  canvas.point(x3,y3);
  canvas.endDraw();
  R+=5; G+=10; B+=15;
  if(R>255) R = 0;
  if(G>255) G = 0;
  if(B>255) B = 0;
}
