float x;
float y;
PImage img;
import processing.sound.*;
SoundFile file;
int savedTime;
int totalTime = 10000;


void setup(){
  size(700,725);
  x=90;
  y=12;
  savedTime = millis();
  img = loadImage("cosmic-scream-poster-screaming-banshee-good-posters-t-shirt-design-67050825.jpg");
  file = new SoundFile(this, "nmh_scream1.wav");
}
  
  void draw(){
  background(255);
  fill(255);
  ellipse(x,y,20,20);
  
  fill(0);
  rect(0,0,70,32);
  rect(110,0,700,32);
  rect(0,0,32,725);
  rect(110,0,34,100);
  rect(70,68,74,34);
  rect(260,0,34,100);
  rect(0,140,350,34);
  rect(455,30,34,160);
  rect(190,68,34,100);
  rect(666,0,34,515);
  rect(0,690,700,34);
  rect(0,470,110,34); 
  rect(590,140,80,34);
  rect(530,70,95,32);
  rect(525,70,32,250);
  rect(320,140,34,115);
  rect(321,221,225,34);
  rect(388,65,32,180);
  rect(335,65,78,32);
  rect(550,286,80,34);
  rect(595,218,35,85);
  rect(72,215,210,37);
  rect(248,215,37,75);
  rect(323,289,165,32);
  rect(75,550,37,150);
  rect(90,550,260,34); 
  rect(150,620,335,34);
  rect(450,550,35,80);
  rect(400,550,80,35);
  rect(666,550,35,170);
  rect(525,620,200,34);
  rect(390,320,34,45);
  rect(600,490,100,30);
  rect(520,437,34,217);
  rect(530,555,100,34);
  rect(590,370,35,150);
  rect(400,415,34,160);
  rect(470,480,78,34);
  rect(470,360,155,34);
  rect(460,360,34,70);
  rect(72,215,34,100);
  rect(72,300,110,34);
  rect(147,300,35,60);
  rect(147,340,172,35);
  rect(320,289,34,86);
  rect(330,413,164,34);
  rect(325,485,34,99);
  rect(72,370,34,67);
  rect(155,420,36,130);
  rect(100,405,125,32);
  rect(235,476,57,36);
  rect(265,340,32,172);
  
  int passedTime = millis() - savedTime;
 
  if(passedTime > totalTime){
    println("10 seconds have passed!");
    image(img,0,0);
     println("image");
    file.play();
    savedTime = millis();
  }
  }
 
  
void keyPressed() {
  float savedX = x;
  float savedY = y;

  if (key=='w') {
    y=y-7;
  } else if (key=='s') {
    y=y+7;
  } else if (key=='a') {
    x=x-7;
  } else if (key=='d') {
    x=x+7;
  }

 
  color c = get(int(x), int(y));  

  if ( brightness(c) == 0) {
    x = savedX;
    y = savedY;
  }

}
