void menu(){
  if(modJeu==3){
    frameRate(20);
    textSize(50);
    fill(255);
    text("Choose Gamemode",410,170);
    textSize(30);
    strokeWeight(5);
    stroke(255,0,0);
    noFill();
    rect(410,290,200,200);
    stroke(0,0,250);
    rect(675,290,200,200);
    text("Classique", 440,330);
    text("Reverse", 720,330);
    textSize(20);
    
    fill(150,0,0);
    //détermination du mod classique choisit
    if (mouseX>=410 && mouseX<=610 &&
        mouseY>=290 && mouseY<=490){
        fill(255,0,0);
        if (mousePressed==true){
          modJeu=0;
          mouseX=0;
          mouseY=0;
        }
    }
    text("le joueur alignant ", 430,400);
    text("trois de ses ", 430,420);
    text("symboles gagne", 430,440);  
    
    fill(0,0,150);
    //détermination du mod reverse choisit
    if (mouseX>=675 && mouseX<=875 &&
        mouseY>=290 && mouseY<=490){
        fill(0,0,255);
        if (mousePressed==true){
          modJeu=1;
          mouseX=0;
          mouseY=0;
        }
    }
    text("le joueur alignant ", 695,400);
    text("trois de ses ", 695,420);
    text("symboles perd", 695,440);
  }
  
  if (modJeu!=3){
    textSize(50);
    fill(255);
    text("Choose Color",480,170);

    if (mouseX>=750 && mouseX<=890 &&
        mouseY>=340 && mouseY<=385){
        fill(200,200,200);
        if (mousePressed==true){
          theme=2;
          menu=false;
          mouseX=0;
          mouseY=0;
          noStroke();
          //stroke(0,0,0);
        }
    }
    text("Blank", 750,380);
    
    fill(255);
    if (mouseX>=410 && mouseX<=610 &&
        mouseY>=330 && mouseY<=390){
        fill(255,0,255);
        if (mousePressed==true){
          theme=1;
          menu=false;
          mouseX=0;
          mouseY=0;
          noStroke();
          //stroke(0,0,0);
        }
    }
    text("Colorful", 410,380);
    
  }
}
  