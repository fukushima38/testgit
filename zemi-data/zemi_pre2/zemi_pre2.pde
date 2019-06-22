int x=500;
int y=350;
int z=0;

void setup(){
  frameRate(60);
  size(1000,700,P3D);
  color(RGB,255);
  background(255);
  noStroke();
}

void draw(){  
  //光
  lights();
  background(255);
  fill(0,0,255);
  //カメラ設定(カメラ位置x,y,z,センターx,y,z、upx,upy,upz)
  camera(mouseX*0.5,mouseY*0.5,100,x,y,0,0,1,0);
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      translate(x+i*10,y+j*10,z);
      box(100,100,100);
    }
  }
}
