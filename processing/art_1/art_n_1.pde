int cells = 7;
float cell_width;
Circle[] circleArray;
PImage photo;

void setup()
{
  size(900,900);
  photo = loadImage("photo.jpg");
  photo.resize(900,900);
  cell_width = width/cells;
  circleArray = new Circle[cells*cells];
  int i = 0;
  color c1 = color(255, 0, 155);
  color c2 = color(255,120,100);
  for (float y = 0; y < cells; y++)
  {
    for (float x = 0; x < cells; x++)
    {
      if (i % 2 == 0) {
         circleArray[i] = new Circle(x*cell_width + cell_width/2 + 1, y*cell_width + cell_width/2 + 1, cell_width - 4, c1); 
      }
      else {
        circleArray[i] = new Circle(x*cell_width + cell_width/2 + 1, y*cell_width + cell_width/2 + 1, cell_width - 4, c2);
      }
       i++;
    }
  }
  draw();
}

void draw()
{ 
  image(photo,0,0);
  for (int i = 0; i < cells*cells; i++) {
    Circle circle = circleArray[i];
    if (dist(circle.xpos, circle.ypos, mouseX, mouseY) < cell_width/2) {
      circle.c = color(255,0,0,0);
      circle.rectColor =color(255,0,0,0);
      circle.stroke = false;
    }
    circle.stroke = false;
    circle.update();
  }
}
