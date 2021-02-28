void mouseClicked() {
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