int x=700;
int y=1000;
int p=8;
int r=3;
int rate=0;


void setup(){
  frameRate(60);
  size(700,1000,P3D);//3D表現
  background(255);
}
//translate(x,y)原点をx,yに移動する
void draw(){
  lights();
  background(255);
  //rotateX(frameCount*0.01);
  //rotateY(frameCount*0.001);
  //rotateZ(frameCount*0.01);
  array();
  camera(mouseX,mouseY,100,x,y,0,0,1,0);

}

void array(){
  noStroke();//枠なし
  fill(0,255,0);
  //配列r*r
  for(int k=0;k<2;k++){
    for (int i=0;i<r;i++){
      for(int j=0;j<r;j++){
        //translate(x/p+i*20,y/p+j*20);
        //box(20,20,20);
        rect(x/p+i*60+k*50,y/p+j*60+k*50,30,30);
      }
    }
  }
}
