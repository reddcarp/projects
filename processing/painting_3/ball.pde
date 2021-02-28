class ball {
  float x, y, vx, vy;

  ball() {
    x=width/2;
    y=height/2;
    float a=random(TWO_PI);
    float speed = random(1, 2);
    vx=cos(a)*speed;
    vy=sin(a)*speed;
  }

  void display() {
    color c = paris.get(int(x), int(y));
    fill (c,50);
    noStroke();
    ellipse(x, y, 10, 10);
  }
  void update() {
    x=x+vx;
    y=y+vy;
   
  }
}