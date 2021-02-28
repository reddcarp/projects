void fin() {
  delay(500);
  int emplacementX=120;
  int emplacementY=10;
  
  //affichage carte de l'IA
  for (i=0; i<13; i++) {
    round = round - 1;
    caseXIA= caseXIA - 155;
    if (caseXIA<0) {
      caseXIA=465;
      caseYIA=caseYIA-60;
    }
    emplacementX=120+caseXIA;
    emplacementY=10+caseYIA;
    if (round>0) {
      if (imageIA[round]!=null) 
        image(imageIA[round], emplacementX, emplacementY);
    }
  }
  
  //affichage point de l'IA
  stroke(0);
  fill(255);
  rect(130, 340, 200, 100);
  fill(0);
  textSize(30);
  text("Points:",155,400);
  text(pointAI, 260, 400);
  textSize(20);
  text("IA",300,360);


  textSize(50);
  fill(255);
  //déclare vainqueur
  if (pointJ==21)
    win="joueur";
  
  if (pointJ>21)
    win="IA";
  
  if (pointJ<21 && pointAI<=21 && pointJ != pointAI) {
    if (pointJ-pointAI>0)
      win="joueur";
    if (pointJ-pointAI<0)
      win="IA";
  }  


  if (pointJ==pointAI && win==null)
    win="match nul";

  if (pointJ<21 && pointAI>21)
    win="joueur";

  if (win=="joueur")
    text("Joueur WIN", width/2 - 100, height/2);

  if (win=="IA")
    text("IA WIN", width/2 - 100, height/2);  

  if (win=="match nul")
    text("Match Nul", width/2 - 100, height/2);
    
  if (win=="joueur" && b==0)
    victoireJ=victoireJ+1; 
  
  if (win=="IA" && b==0)
    victoireIA=victoireIA+1;
  
  b=1;
  
  //affiche nb de victoire
  fill(255);
  rect(10,750,200,120);
  fill(0);
  textSize(25);
  text("Joueur:",20,800);
  text("IA:",20,850);
  text(victoireJ,110,800);
  text(victoireIA,55,850);
  textSize(15);
  text("victoire",150,770);

  textSize(50);
  fill(255);
  text("Press 'y' to replay",800,60);
}