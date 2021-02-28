OpenSimplexNoise noise = new OpenSimplexNoise();
float t;
int numFrames = 120;
boolean recording = false;

float cells = 30;
float cell_width;
float noiseRadius = 2;

void setup()
{
  size(900,900);
  noFill();
  cell_width = width/cells;
}

void draw()
{ 
  background(0);
  t = map(frameCount-1, 0, numFrames, 0, 1);
  
  for (int y = 0; y < cells; y++)
  {
    for (int x = 0; x < cells; x++)
    {
       stroke(255);
       float radius = 100*(float)noise.eval(x*cell_width*0.01, y*cell_width*0.01, noiseRadius*cos(TWO_PI*t), noiseRadius*sin(TWO_PI*t))+100;
        
       if (dist(x*cell_width, y*cell_width, width/2, width/2) < radius)
       {
        // stroke(0);
          //line((x + 1)*cell_width, y*cell_width, x*cell_width, (y+1)*cell_width); //1//
          //fill(255);
          rect(x*cell_width, y*cell_width, cell_width, cell_width);              //2//
         //strokeWeight(3);
         //line(x*cell_width, y*cell_width, (x + 1)*cell_width, (y+1)*cell_width);
         //line((x + 1)*cell_width, y*cell_width, x*cell_width, (y+1)*cell_width);
       }
       else
       {
         stroke(255);
         strokeWeight(1);
         noFill();
         //circle(x*cell_width + cell_width/2, y*cell_width + cell_width/2, cell_width/2);
        // rect(x*cell_width, y*cell_width, cell_width, cell_width);   
        line(x*cell_width, y*cell_width, (x + 1)*cell_width, (y+1)*cell_width);
        line((x + 1)*cell_width, y*cell_width, x*cell_width, (y+1)*cell_width);
       }
    }
  }
}
/*
//square patern
stroke(255);
rect(x*cell_width, y*cell_width, (x + 1)*cell_width, (y+1)*cell_width);

//cross patern
stroke(255);
line(x*cell_width, y*cell_width, (x + 1)*cell_width, (y+1)*cell_width);
stroke(255,0,0);
line((x + 1)*cell_width, y*cell_width, x*cell_width, (y+1)*cell_width);

*/
