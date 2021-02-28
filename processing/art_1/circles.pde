class Circle {
  float xpos;
  float ypos;
  float radius;
  color c;
  color rectColor = color(204, 0, 204);
  boolean stroke = true;
  

  Circle(float x, float y, float radius, color c) {
    xpos = x;
    ypos = y;
    this.c = c;
    this.radius = radius;
  }
  
  void update() {
    fill(rectColor);
    if (stroke) {
      stroke(255);
    }
    else {
      noStroke();
    } 
    rect(xpos - cell_width/2, ypos - cell_width/2, cell_width, cell_width); 
    fill(c);
    noStroke();
    circle(xpos,ypos,radius);
  }
}
