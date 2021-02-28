PImage kirua;
PImage paris;
PImage MHA;

void setup(){
  fullScreen();
  kirua = loadImage("hunter-x-hunter-wallpaper6.jpg");
  paris = loadImage("Paris.jpg");
  MHA = loadImage("My-Hero-Academia.jpg");
  background(0);
}

void draw(){
  for(int i=0;i<10000;i++){
    float x = random(width);
    float y = random(height);
    color c = paris.get(int(x),int(y));
    if (y<850)
      fill(c);
    else
      fill(c,60);
    noStroke();
    ellipse(x,y,5,5);
  }
}
