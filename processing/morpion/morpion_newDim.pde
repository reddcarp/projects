//déclaration des variables
short a=0;
short b=0;
short c=0;
short d=0;
short e=0;
short f=0;
short g=0;
short h=0;
short j=0;
byte i; 
byte joueur = 1;
byte theme = 0;
byte modJeu = 3;
boolean menu = true;
boolean fin = false;
boolean play = false;
PImage croix_rouge;
PImage cercle_bleu;
PImage fond;

//initialiasation du programme
void setup() {
  size(1280,720);
  fond = loadImage("fond_arcade.png");
  fond.resize(1280,720);
  croix_rouge = loadImage("croix_rouge.png");
  croix_rouge.resize(166,166);
  cercle_bleu = loadImage("cercle_bleu.png");
  cercle_bleu.resize(166,166);
}

//création des éléments de la fenêtre
void draw() {
  background(fond);
  textSize(40);
  
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
      text("J1",(width/2)+180,height/6); }
    if (joueur==2) {
      fill(0,0,255);
      text("J2",(width/2)+180,height/6);}
    
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
    void keyPressed() {
    play=true;
}

    