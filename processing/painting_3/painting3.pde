PImage kirua;
PImage paris;
PImage MHA;
ball[] ball;

void setup(){
  fullScreen();
  kirua = loadImage("hunter-x-hunter-wallpaper6.jpg");
  paris = loadImage("Paris.jpg");
  MHA = loadImage("My-Hero-Academia.jpg");
  background(0);
  ball = new ball[5000];
   for (int i =0;i<ball.length;i++){
     ball[i] = new ball();
   }
}

void draw(){
  for (int i =0;i<ball.length;i++){
     ball[i].display();
     ball[i].update();
   }
}
