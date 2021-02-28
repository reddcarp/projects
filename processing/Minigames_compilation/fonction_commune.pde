void keyPressed() {  
  if ( black_jack==true){
    if (key=='y' && rester==true && finIA==true){
      tour="joueur";
      a=0;
      b=0;
      slotJ=0;
      slotIA=0;
      pointJ=0;
      pointAI=0;
      caseYJ=0;
      caseXJ=0;
      caseYIA=0;
      caseXIA=0;
      i = 0;
      size=0;
      tirer=0;
      AsJ=0;
      AsIA=0;
      round=0;
      finIA=false;
      win=null;
      fin=false;
      rester=false;
      finshuffle=false;
      initiate=true;
    }
  }
  
  if (morpion==true){
    if (key=='y' && fin==true){
      a=0;
      b=0;
      c=0;
      d=0;
      e=0;
      f=0;
      g=0;
      h=0;
      j=0;
      joueur = 1;
      fin=false;
      loop();
      noStroke();
    }
  }
   
   if (keyCode==ENTER){
     a=0;
     b=0;
     slotJ=0;
     slotIA=0;
     pointJ=0;
     pointAI=0;
     caseYJ=0;
     caseXJ=0;
     caseYIA=0;
     caseXIA=0;
     i = 0;
     size=0;
     tirer=0;
     AsJ=0;
     AsIA=0;
     round=0;
     finIA=false;
     win=null;
     fin=false;
     rester=false;
     finshuffle=false;
     initiate=true;
     titre=true;
     
     c=0;
     d=0;
     e=0;
     f=0;
     g=0;
     h=0;
     j=0;
     joueur=1;
     theme = 0;
     modJeu = 3;
     menu = true;
     play = false;
     loop();
     stroke(5);
     
     black_jack=false;
     morpion=false;
     mainMenu=true;
   }
}

void mouseClicked() {
  if ( black_jack==true){
    textSize(10);
    fill(255, 255, 255);
    if (a<=51 && tirer==1) {
      delay(30);
      point();
      affichageCarte(600, 800);
      a = a+1;
      tirer=0;
      tour="IA";
    }
  }
}