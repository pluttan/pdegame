PShape square;  // The PShape object
PShape prep;

void setup() {
  size(1000, 700);
  square = createShape(RECT, 0, 0, 50, 50);
  square.setFill(color(0, 0, 255));
  square.setStroke(false);
  prep = createShape(RECT, 0, 0, 500, 500);
  prep.setFill(color(225, 0, 0));
  prep.setStroke(false);
}
int speedx=1;
int speedy=1;
int predx=210;
int predy=210;
int vectx=0;
int lvl=1;
int vecty=0;
boolean pr=false;

void draw() {
  if (!pr){
    background(0x0f0f0f);
    walk();
    if (lvl==1)lvl1();
    if (lvl==2)lvl2();
    if (lvl==3)lvl=1;
    delay(10);
  };
}

void mouseClicked() {
  if (pr){
    pr=false;
    predx=210;
    predy=210;
  };
}

void walk(){
  if (predx<mouseX+25)vectx=1;
  if (predx>mouseX-25)vectx=-1;
  if (predy<mouseY+25)vecty=1;
  if (predy>mouseY-25)vecty=-1;
  if (vectx==1)predx=predx+speedx;
  if (vectx==-1)predx=predx-speedx;
  if (vecty==1)predy=predy+speedy;
  if (vecty==-1)predy=predy-speedy;
  shape(square, predx, predy);
}

void doprep(int x, int y){
  prep = createShape(RECT, 0, 0, 100, 100);
  prep.setFill(color(225, 0, 0));
  
  shape(prep, x, y);
  if(x+100>predx &&
  y+100>predy &&
  x-50<predx &&
  y-50<predy){
    pr=true;
  };
}
void dofin(int x, int y){
  prep = createShape(RECT, 0, 0, 100, 100);
  prep.setFill(color(0, 255, 0));
  
  shape(prep, x, y);
  if(x+100>predx &&
  y+100>predy &&
  x-50<predx &&
  y-50<predy){
    pr=true;
    lvl+=1;
  };
}

void lvl1(){
    doprep(300,300);
    doprep(100,300);
    doprep(300,400);
    doprep(100,400);
    doprep(100,500);
    doprep(100,600);
    doprep(200,600);
    doprep(300,600);
    doprep(400,600);
    doprep(500,600);
    doprep(500,500);
    doprep(500,400);
    doprep(500,300);
    doprep(100,200);
    doprep(100,300);
    doprep(700,300);
    doprep(600,300);
    doprep(700,100);
    doprep(600,100);
    doprep(500,100);
    doprep(400,100);
    doprep(300,100);
    doprep(200,100);
    doprep(100,100);
    doprep(300,140);
    dofin(700,200);
}

void lvl2(){
    doprep(0,0);
    doprep(0,100);
    doprep(0,200);
    doprep(0,300);
    doprep(0,400);
    doprep(0,500);
    doprep(0,600);
    doprep(100,0);
    doprep(200,0);
    doprep(300,0);
    doprep(400,0);
    doprep(500,0);
    doprep(600,0);
    doprep(700,0);
    doprep(800,0);
    doprep(900,0);
    doprep(1000,0);
    doprep(100,600);
    doprep(200,600);
    doprep(300,600);
    doprep(400,600);
    doprep(500,600);
    doprep(600,600);
    doprep(700,600);
    doprep(800,600);
    doprep(900,600);
    doprep(1000,600);
    
    doprep(300,100);
    doprep(300,200);
    doprep(300,300);
    doprep(300,400);
    
    doprep(500,200);
    doprep(500,300);
    doprep(500,400);
    doprep(500,500);
    
    doprep(700,100);
    doprep(700,200);
    doprep(700,300);
    doprep(700,400);
    
    doprep(900,200);
    doprep(900,300);
    doprep(900,400);
    doprep(900,500);
    
    dofin(900,100);
}