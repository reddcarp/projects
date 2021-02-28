void black_jack(){
  
   if (keyPressed == true) 
    titre=false;
  
 if (titre==true)
    chargement();
    
 if (finshuffle==false)
    shuffle();

  if (initiate==true && finshuffle==true && titre==false) {
    background(0, 120, 0);
    point();
    affichageCarte(600, 800);
    a = a+1;
    tour="IA";
    initiate=false;
  }

  if (pointJ>21)
    rester=true;
  if (rester==true)
    tour="IA";
  if (finIA==true)
    tour="joueur";

  if (rester==true && finIA==true) {
    fin();
    tour="null";
  }

  if (tour=="joueur" && initiate==false && finshuffle==true)
    move();
  if (tour=="IA")
    IA(); 
}  

  
  void affichageCarte(int emplacementX, int emplacementY) {
  if (tour=="joueur") {
    emplacementX=emplacementX+caseXJ;
    emplacementY=emplacementY +caseYJ;
    image(imageCarte[a], emplacementX, emplacementY);
    caseXJ=caseXJ+155;
    if (caseXJ>500) {
      caseXJ=0;
      caseYJ=caseYJ+60;
    }
  }

  if (tour=="IA") { 
    emplacementX=emplacementX+caseXIA;
    emplacementY=emplacementY +caseYIA;
    image(back, emplacementX, emplacementY);
    if (round==0)
      image(imageCarte[a], emplacementX, emplacementY);  
    imageIA[round] = loadImage(deckActif[a]+".png");
    round = round + 1;
    caseXIA=caseXIA+155;
    if (caseXIA>500) {
      caseXIA=0;
      caseYIA=caseYIA+60;
    }
  }
}


void IA() {
  delay(600);
  if (pointAI<21) {

    if (pointAI==18 ) {
      int r = (int) random(0, 5);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==19 ) {
      int r = (int) random(0, 10);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==20) 
      finIA=true;

    if (pointAI==15 || pointAI==16 ) {
      int r = (int) random(0, 3);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==14 || pointAI==13 || pointAI==12 ) {
      int r = (int) random(0, 6);
      if (r!=0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==17 ) {
      int r = (int) random(0, 4);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI<12 )
      tirerIA();
  }

  if (pointAI>=21) 
    finIA=true;
}

void chargement() {
  image(ecranChargement, 0, 0);
  fill(255);
  textSize(30);
  text("Press any key",width/2 - 100,height/2 + 300);
  image(imageCarte[0], width/2 -155, height/2 -225);
  image(back, width/2, height/2 -225);
  image(imageCarte[0], width/2, height/2);
  image(back, width/2 -155, height/2);
  textSize(60);
  text("Black Jack",width/2 -145,height/2 - 300);
}

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
  if (pointJ==21 && pointAI!=21)
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

void move() {  
  noFill();
  stroke(0);
  textSize(50);
  strokeWeight(5);
  rect(300, 900, 200, 100);
  rect(75, 900, 200, 100);
  fill(0);
  text("Tirer", 120, 968);
  text("Rester", 325, 968);


  //détermination tirer
  if (mouseX>=75 && mouseX<=275 &&
      mouseY>=900 && mouseY<=1000) {
    stroke(255, 255, 255);
    fill(255, 255, 255);
    text("Tirer", 120, 968);
    if (mousePressed==true)
      tirer=1;
  }
  noFill();
  rect(75, 900, 200, 100);

  fill(0);
  stroke(0);
  //détermination rester
  if (mouseX>=300 && mouseX<=500 &&
      mouseY>=900 && mouseY<=1000) {
    stroke(255, 255, 255);
    fill(255, 255, 255);
    text("Rester", 325, 968);
    if (mousePressed==true)
      rester=true;
  }
  noFill();
  rect(300, 900, 200, 100);
}

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


void shuffle() {
  for (int i=0;i<1000;i++){
    int r = (int) random(1, 52);
    echangeCarte = deckActif[r];
    deckActif[r] = deckActif[0];
    deckActif[0] = echangeCarte;
  
    echangeValeur = valeurCarteDeckActif[r];
    valeurCarteDeckActif[r] = valeurCarteDeckActif[0];
    valeurCarteDeckActif[0] = echangeValeur;
  
    echangeImage = imageCarte[r];
    imageCarte[r] = imageCarte[0];
    imageCarte[0] = echangeImage;
  }
  finshuffle=true;
}

void tirerIA() {
  point();
  affichageCarte(120, 10);
  a = a+1;
  tour="joueur";
}

 