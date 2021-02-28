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