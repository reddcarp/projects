void chargement() {
  image(ecranChargement, 0, 0);
  fill(255);
  textSize(30);
  text("Press any key",width/2 - 100,height/2 + 300);
  int r = (int) random(1, 52);
  image(imageCarte[r], width/2 -155, height/2 -225);
  image(back, width/2, height/2 -225);
  image(imageCarte[r], width/2, height/2);
  image(back, width/2 -155, height/2);
  textSize(60);
  text("Black Jack",width/2 -145,height/2 - 300);
}