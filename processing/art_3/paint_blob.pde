class Paintblob {
  //choose between configuration [0,1]
  int configuration;
  
  float speed_multiplier = 1;
  float xpos;
  float ypos;
  float size;
  color c;
  float speedx;
  float speedy;
   
  Paintblob(float xpos, float ypos, color c, int configuration) {
    size = random(5, 15);
    speedx = random(-1,1.01) * speed_multiplier;
    speedy = random(-1,1.01) * speed_multiplier;
    this.xpos = xpos;
    this.ypos = ypos;
    this.c = c;
    this.configuration = configuration;
  }
  
  void display() {
    fill(c);
    circle(xpos, ypos, size);
  }
  
  void update() {
     size -= (speedx*speedx + speedy*speedy);
     xpos += speedx;
     ypos += speedy;
     if (configuration == 1) {
       xpos += size/3;
       ypos += size/3;
     }
  }
  
  float getSize() {
    return size; 
  }
}
