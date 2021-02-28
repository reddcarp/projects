void morpion(){
  translate(0,160);
  background(fond_morpion);
  textSize(40);

  if (keyPressed == true) 
    play=true;
  
  //message s'affichant au lancement du programme
  if (play==false)
    text("Press Any Button",480,390);
  
  //menu de sélection des option de jeu
  if (menu==true && play==true)
    menu();
  
  //le jeu commence
  if (play && fin==false && menu==false) {

    //tracer de la grille
    if (theme==2)
      fill(255,255,255);
    rect(557,133,7,513);
    rect(width-543,133,-7,513);
    rect(390,300,512,7);
    rect(390,473,512,7);
    
    //détermination de la case jouée en mode de jeu 1
    if (modJeu==1)
      case_jouer();
    
    //tour du joueur 
    if (joueur==1) {
      fill(255,0,0);
      textSize(35);
      text("J1",(width/2)+180,height/8 - 15);
    }
      
    if (joueur==2) {
      fill(0,0,255);
      textSize(35);
      text("J2",(width/2)+180,height/8 - 15);
    }
    
    
    //détermination de la case jouée en mode de jeu 2
    if (modJeu==0)
      case_jouer();
    
    //tracer de la bonne figure cad cercle ou croix
    symbole(a,b,c,d,e,f,g,h,j);
    
    //détermination de victoire(ou match nul) + affichage des éléments graphiques de victoire
    victoire(a,b,c,d,e,f,g,h,j,modJeu);

    //arrêt du fonctionnement du code de la fonction draw 
    if (fin==true)
      noLoop();
            
  }
}

void case_jouer(){
  my=mouseY-160;
   if (mousePressed==true) { 
       if (my>=133 && my<=300) {
          if (mouseX>=390 && mouseX<=557 && a==0)
            if (joueur==1) { a=1; joueur=2; }
            else { a=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && b==0)
            if (joueur==1) { b=1; joueur=2; }
            else { b=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && c==0)
            if (joueur==1) { c=1; joueur=2; }
            else { c=2; joueur=1; }
       }
       
        if (my>=307 && my<=473) {
          if (mouseX>=390 && mouseX<=557 && d==0)
            if (joueur==1) { d=1; joueur=2; }
            else { d=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && e==0)
            if (joueur==1) { e=1; joueur=2; }
            else { e=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && f==0)
            if (joueur==1) {f=1; joueur=2; }
            else { f=2; joueur=1; }
        }
        
        if (my>=480 && my<=647) {
          if (mouseX>=390 && mouseX<=557 && g==0)
            if (joueur==1) { g=1; joueur=2; }
            else { g=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && h==0)
            if (joueur==1) { h=1; joueur=2; }
            else { h=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && j==0)
            if (joueur==1) { j=1; joueur=2; }
            else { j=2; joueur=1; }
        }     
   }
}

void menu(){
  my=mouseY - 160;
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
        my>=290 && my<=490){
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
        my>=290 && my<=490){
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
        my>=340 && my<=385){
        fill(200,200,200);
        if (mousePressed==true){
          theme=2;
          menu=false;
          mouseX=0;
          mouseY=0;
          noStroke();
        }
    }
    text("Blank", 750,380);
    
    fill(255);
    if (mouseX>=410 && mouseX<=610 &&
        my>=330 && my<=390){
        fill(255,0,255);
        if (mousePressed==true){
          theme=1;
          menu=false;
          mouseX=0;
          mouseY=0;
          noStroke();
        }
    }
    text("Colorful", 410,380);
    
  }
}

void symbole (int a,int b,int c,int d,int e,int f,int g,int h,int j){
    if (a==1)
      image (croix_rouge, 389, 133);
    if (a==2)
      image (cercle_bleu, 389,133);
      
    if (b==1)
      image (croix_rouge, 563, 133);
    if (b==2)
      image (cercle_bleu, 563,133);
      
    if (c==1)
      image (croix_rouge, 737, 133);
    if (c==2)
      image (cercle_bleu, 737,133);
      
    if (d==1)
      image (croix_rouge, 389, 307);
    if (d==2)
      image (cercle_bleu, 389,307);
      
    if (e==1)
      image (croix_rouge, 563, 307);
    if (e==2)
      image (cercle_bleu, 563,307);
      
    if (f==1)
      image (croix_rouge, 737, 307);
    if (f==2)
      image (cercle_bleu, 737,307);
      
    if (g==1)
      image (croix_rouge, 389, 480);
    if (g==2)
      image (cercle_bleu, 389,480);
    
    if (h==1)
      image (croix_rouge, 563, 480);
    if (h==2)
      image (cercle_bleu, 563,480);
      
    if (j==1)
      image (croix_rouge, 737, 480);
    if (j==2)
      image (cercle_bleu, 737,480);
}

void victoire(int a,int b,int c,int d,int e,int f,int g,int h,int j,byte modJeu){
  textSize(40);
    
  if ((a == b) && (b == c)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 -15);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 217, 900, 217);
      fin=true;
      }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(150,0,255);
      strokeWeight(15);
      line(390, 217, 900, 217);
      fin=true;
    }
  }
  
  if ((d == e) && (e == f)){
    if (d==1 && modJeu==0 || d==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 390, 900, 390);
      fin=true;
    }
    if (d==2 && modJeu==0 || d==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 390, 900, 390);
      fin=true;
    }
  }
  
  if ((g == h) && (h == j)){
    if (g==1 && modJeu==0 || g==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 564, 900, 564);
      fin=true;
    }
    if (g==2 && modJeu==0 || g==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 564, 900, 564);
      fin=true;
    }
  }
  
  if ((a == d) && (d == g)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(472, 133, 472, 647);
      fin=true;
    }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(472, 133, 472, 647);
      fin=true;
    }
  }
  
  if ((b == e) && (e == h)){
    if (b==1 && modJeu==0 || b==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(645, 133, 645, 647);
      fin=true;
    }
    if (b==2 && modJeu==0 || b==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(645, 133, 645, 647);
      fin=true;
    }
  }
  
  if ((c == f) && (f == j)){
    if (c==1 && modJeu==0 || c==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(820, 133, 820, 647);
      fin=true;
    }
    if (c==2 && modJeu==0 || c==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(820, 133, 820, 647);
      fin=true;
    }
  }
  
  if ((a == e) && (e == j)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 133, 900, 642);
      fin=true;
    }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 133, 900, 642);
      fin=true;
    }
  }
  
  if ((c == e) && (e == g)){
    if (c==1 && modJeu==0 || c==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(255,105,0);
      strokeWeight(15);
      line(900, 133, 390, 642);
      fin=true;
    }
    if (c==2 && modJeu==0 || c==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/8 - 15);
      stroke(105,0,255);
      strokeWeight(15);
      line(900, 133, 390, 642);
      fin=true;
    }
  }
  
  if (a!=0 && b!=0 && c!=0 && d!=0 && e!=0 && f!=0 && g!=0 && h!=0 && j!=0 && fin==false){
    fill(0);
    rect((width/2)+50,height/8 - 50,200,50);
    fill(255);
    joueur=0;
    text("Match Nul",(width/2)+100,height/8 - 15);
    fin=true;
  }
  
  textSize(20);
  if(fin==true){
    if (joueur==1)
      scoreJ1=scoreJ1+1;
    if (joueur==2)
      scoreJ2=scoreJ2+1;
    text("Press 'y' to replay",width/2-76,height/8 - 18);
  }
  
   //affichage victoire
   fill(255,0,0);
   text("Victoire J1:",400,height/8 - 30);
   text(scoreJ1,510,height/8 - 30);
   fill(0,0,255);
   text("Victoire J2:",400,height/8 -8);
   text(scoreJ2,510,height/8 - 8);
  
   if (joueur==2) {
      fill(0,0,255);
      textSize(35);}
   if (joueur==1) {
      fill(255,0,0);
      textSize(35);}
  
 
}