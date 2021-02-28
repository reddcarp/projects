ArrayList<Paintblob> list = new ArrayList<Paintblob>();
int maximum_blob;
int blob_per_click = 40;
color c;
int s = 0;

//choose betwwen configurations [0,1,2]
int configuration = 0;
//color for configuration 1;
color c1 = color(47,208,51);

int config_blob;

void setup() {
   size(900, 900);
   background(0);
   noStroke();
}

void draw() {
  
   //draw the circles in the list
   for (int i = list.size() - 1; i >= 0; i--) {
     list.get(i).display();
     list.get(i).update();
   }
   
   //checks if the circle has to be removed
   for (int i = list.size() - 1; i >= 0; i--) {
     if (list.get(i).getSize() <= 0) {
       list.remove(i); 
     }
   }
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    config_blob = 0; 
  }
  else {
    config_blob = 1; 
  }
  if (configuration == 2) {
    for (int i = 0; i < blob_per_click; i++) {
      c = color(random(0,256),random(0,256),random(0,256));
      list.add(new Paintblob(mouseX,mouseY,c,config_blob));
    }
  }
  else {
    if (configuration == 0) {
      c = color(random(0,256),random(0,256),random(0,256));
    }
    if (configuration == 1) {
      c = c1; 
    }
    for (int i = 0; i < blob_per_click; i++) {
      list.add(new Paintblob(mouseX,mouseY,c,config_blob));
    }
  }
}

void keyPressed() {
   if (key == '0') {
     println("color mod = 0");
     configuration = 0;
   }
   if (key == '1') {
     println("color mod = 1");
     configuration = 1;
   }
   if (key == '2') {
     println("color mod = 2");
     configuration = 2;
   }
   if (key == 's' || key ==  'S') {
     println("saved");
     saveFrame("art_1");
   }
}
