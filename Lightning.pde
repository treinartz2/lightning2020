
//declare bacteria variables here 
Bacteria one;
boolean on=true;
Bacteria [] b=new Bacteria[10];
void setup() {     
  size(400, 400);
  noLoop();
  //initialize bacteria variables here   
  //one=new Bacteria(width/2, height/2, 255, 0, 0);
  for (int i=0; i<b.length; i++) {
    b[i]=new Bacteria(width/2, height/2, 255, 0, 0);
    //b[i]=new Bacteria(mouseX, mouseY, 255, 0, 0);
  }
}   
void draw() {    
  //move and show the bacteria 
  background(0);
  for (int i=0; i<b.length; i++) {
    b[i].move();
    b[i].show();
  }
}  

void mousePressed() {
  println("Hello");
  if (on) {
    loop();
   
    on=false;
  } else {
    redraw();
    noLoop();
    on=true;
  }
}

////////////////////////////////////////
class Bacteria {     
  //lots of java!   
  int xpos;
  int ypos;
  int r, g, b; 
  int speed=1;
  int xspeed=1;
  int yspeed=1;

  Bacteria(int x, int y, int _r, int _g, int _b) {
    xpos=x;
    ypos=y;
    r=_r;
    g=_g;
    b=_b;
  }

  void move() {
    xpos+=speed;
    ypos+=speed;
   
    xpos=xpos+(int)(Math.random()*8)-4;
    ypos=ypos+(int)(Math.random()*8)-4;

    // xpos=(int)constrain(xpos, 0, width-50);
    //ypos=(int)constrain(ypos, 0, height-50);
    if (xpos>width-60) {
      speed=-1;
    }
    if (xpos<60) {
      speed=1;
    }
    if (ypos>height-60) {
      speed=-1;
    }
    if (ypos<60) {
      speed=1;
    }
  }
  void show() {
    ellipse(xpos, ypos, 20, 20);
  }
} 
