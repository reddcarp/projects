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