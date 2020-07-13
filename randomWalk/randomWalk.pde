
PGraphics canvas;
int[] dx = new int[]{0,0,1,-1};
int[] dy = new int[]{1,-1,0,0};
int[][] M = new int[60][60];
int x;
int y;
int px;
int py;

int x2;
int y2;
int px2;
int py2;

void setup(){
  size(600,600);
  x = 20;
  y = 0;
  px = x;
  py = y;
  x2 = 0;
  y2 = 20;
  px2 = x2;
  py2 = y2;
  canvas = createGraphics(600,600);
  canvas.beginDraw();
  canvas.background(255);
  canvas.endDraw();
  for(int i=0;i<60;i++){
    for(int j=0;j<60;j++){
      M[i][j] = 0;
    }
  }
}

void draw(){
  image(canvas,0,0);
  int dir = floor( random(4) );
  int nx = x+dx[dir];
  int ny = y+dy[dir];
  if(nx>30 || nx<0 || ny>30 || ny<0){
    
   }else{
     x = nx;
     y = ny;
     canvas.beginDraw();
    // canvas.stroke(0,155,255);
    // canvas.strokeWeight(4);
     canvas.line(px*20,py*20,x*20,y*20);
     canvas.endDraw();
     px = x;
     py = y;
   }
   
      dir = floor( random(4) );
     nx = x2+dx[dir];
     ny = y2+dy[dir];
    if(nx>30 || nx<0 || ny>30 || ny<0){
      
     }else{
       x2 = nx;
       y2 = ny;
       canvas.beginDraw();
       //canvas.stroke(155,0,0);
       //canvas.strokeWeight(4);
       canvas.line(px2*20,py2*20,x2*20,y2*20);
       canvas.endDraw();
       px2 = x2;
       py2 = y2;
     }
}
