import java.awt.*;
import gab.opencv.*;
import processing.video.*;

Capture video;
OpenCV opencv;

void setup(){
size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_EYE);
  video.start();
}

void draw(){
  scale(2);
  opencv.loadImage(video);
image(video,0,0);
Rectangle[] faces = opencv.detect();
noFill();
stroke(0, 255, 0);
strokeWeight(3);
for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }

}


void captureEvent(Capture c){
  c.read();
}
