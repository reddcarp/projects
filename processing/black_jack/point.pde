void point() {
  stroke(0);
  textSize(30);
  strokeWeight(5);
  fill(255);
  rect(10,750,200,120);
  fill(255);
  if (rester==true)
    stroke(255,0,0);
  rect(1000, 650, 200, 100); 
  fill(0);
  text("Points:", 1025, 710);
  textSize(20);
  text("Joueur",1130,670);

  //point joueur
  if (tour == "joueur") {
    pointJoueur[a] = valeurCarteDeckActif[a];
    if (pointJoueur[a]==11) {
      AsJ=AsJ+1;
    }
    pointJ = pointJ + pointJoueur[a];

    //si les point dépasse 21 change la valeur de l'as prend 1
    if (pointJ>21 && AsJ>0) {
      for (i=0; i<51; i++) {
        if (pointJoueur[i]==11) {
          pointJoueur[i]=1;
          pointJ=pointJ-10;
          AsJ=AsJ-1;
          i=52;
        }
      }
    }
  }
  textSize(30);
  text(pointJ, 1130, 710);
  
  //affiche nb de victoire
  fill(0);
  textSize(25);
  text("Joueur:",20,800);
  text("IA:",20,850);
  text(victoireJ,110,800);
  text(victoireIA,55,850);
  textSize(15);
  text("victoire",150,770);

  //point IA
  if (tour == "IA") {
    pointIA[a] = valeurCarteDeckActif[a];
    if (pointIA[a]==11) {
      AsIA=AsIA+1;
    }
    pointAI = pointAI + pointIA[a];

    //si les point dépasse 21 change la valeur de l'as prend 1
    if (pointAI>21 && AsIA>0) {
      for (i=0; i<51; i++) {
        if (pointIA[i]==11) {
          pointIA[i]=1;
          pointAI=pointAI-10;
          AsIA=AsIA-1;
          i=52;
        }
      }
    }
  }
}