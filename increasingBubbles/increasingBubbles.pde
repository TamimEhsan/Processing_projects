

Circle[] circles = new Circle[300];

void setup(){
  size(640,360);
  for(int i=0; i < circles.length; i++){
    circles[i] = new Circle();
  }
}

void draw() {
  background(0, 0, 0); // background color in RGB color cordinates
  for (int i = 0; i < circles.length; i++) {
    circles[i].increase(); // sets the shape and speed of drop
    circles[i].show(); // render drop
  }
}
