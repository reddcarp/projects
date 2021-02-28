PImage kirua;
PImage paris;
PImage MHA;
PImage Marvin;
ball[] ball;

void setup(){
  size(1920,540);
  kirua = loadImage("hunter-x-hunter-wallpaper6.jpg");
  paris = loadImage("Paris.jpg");
  paris.resize(960,540);
  MHA = loadImage("My-Hero-Academia.jpg");
  Marvin = loadImage("Marvin.jpg");
  background(0);
  ball = new ball[5000];
   for (int i =0;i<ball.length;i++){
     ball[i] = new ball();
   }
}

void draw(){
  image(Marvin,960,0);
  for (int i =0;i<ball.length;i++){
    if(mousePressed==true){
    ball[i].display();
     ball[i].update();
    }
  }
  
 if(keyPressed==true){
  for(int i=0;i<10000;i++){
  float x = random(width/2);
  float y = random(height);
  color c = paris.get(int(x),int(y));
  //if (y<850)
  fill(c);
  //else fill(c,60);
  noStroke();
  ellipse(x,y,4,4);
  }
  }
}
