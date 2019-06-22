import processing.opengl.*;//３Dグラフィックのインタフェース、高速描画
int x=700;
int y=500;
int r=50;
int p=0;
float scale=1.0;
int tx1,tx2,ty1,ty2,tz1,tz2=0;
int a=0;

void setup(){
  frameRate(60);
  size(700,500,P3D);
  color(RGB,255);
  background(255);
  stroke(255);
  fill(0,100,255);
}

void draw(){
  lights();
  if(mousePressed==false){
    background(255);
    itemArray();
    scale=1;
  }
  if(mousePressed==true){
    background(255);
    scale(scale);
    scale+=0.01;
    itemArray();
  }
}

void itemArray(){
  //一階層目
  tx1=tx2;
  tx1=0;
  tz1=0;
  tz2=-100;
  item();
  //二階層目
  tz1=-500;
  tz2=-600;
  item();
  //二階層左後ろ
  tx1=-500;
  item();
  //
}

void item(){
  translate(tx1,ty1,tz1);
  arrayCircle();
  translate(tx2,ty2,tz2);
  arrayCircle();
}

void arrayCircle(){
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
    circle(x/3+i*100,y/4+j*100,r);
    }
  }
}
//camera(mouseX,mouseY,100,x/2,y/2,0,0,1,0);
