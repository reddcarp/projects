//black_jack
int a=0;
int b=0;
int slotJ=0;
int slotIA=0;
int pointJ=0;
int pointAI=0;
int caseYJ=0;
int caseXJ=0;
int caseYIA=0;
int caseXIA=0;
int i = 0;
int size=0;
int tirer=0;
int AsJ=0;
int AsIA=0;
int echangeValeur;
int round=0;
int victoireJ=0;
int victoireIA=0;
boolean finshuffle=false;
boolean titre=true;
boolean initiate=true;
boolean rester=false;
boolean finIA=false;
boolean fin=false;
String echangeCarte;
String win=null;
String tour="joueur";
PImage ecranChargement;
PImage echangeImage;
PImage back;

//morpion
int c=0;
int d=0;
int e=0;
int f=0;
int g=0;
int h=0;
int j=0;
int my;
int scoreJ1;
int scoreJ2;
byte joueur = 1;
byte theme = 0;
byte modJeu = 3;
boolean menu = true;
boolean play = false;
PImage croix_rouge;
PImage cercle_bleu;
PImage fond_morpion;
PImage titreMorpion;

boolean black_jack=false;
boolean morpion=false;
boolean DDR=false;
boolean Ping=false;
boolean mainMenu = true;

//P=pique C=carreau T=trèfle H=coeur 52CARTE 51CASES

String[] deckActif = {"AP", "2P", "3P", "4P", "5P", "6P", "7P", "8P", "9P", "10P", "JP", "QP", "KP", 
  "AC", "2C", "3C", "4C", "5C", "6C", "7C", "8C", "9C", "10C", "JC", "QC", "KC", 
  "AT", "2T", "3T", "4T", "5T", "6T", "7T", "8T", "9T", "10T", "JT", "QT", "KT", 
  "AH", "2H", "3H", "4H", "5H", "6H", "7H", "8H", "9H", "10H", "JH", "QH", "KH"};                

int[] valeurCarteDeckActif = {11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 
  11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 
  11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 
  11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10 };                            

int[] pointJoueur = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

int[] pointIA = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };

PImage[] imageCarte; 

PImage[] imageIA;

void setup() {
  //  fullScreen();
  size(1280, 1024);
  ecranChargement = loadImage("ecran_chargement.png");

  imageCarte = new PImage[52];

  imageCarte[0] = loadImage("AP.png");
  imageCarte[1] = loadImage("2P.png");
  imageCarte[2] = loadImage("3P.png");
  imageCarte[3] = loadImage("4P.png");
  imageCarte[4] = loadImage("5P.png");
  imageCarte[5] = loadImage("6P.png");
  imageCarte[6] = loadImage("7P.png");
  imageCarte[7] = loadImage("8P.png");
  imageCarte[8] = loadImage("9P.png");
  imageCarte[9] = loadImage("10P.png");
  imageCarte[10] = loadImage("JP.png");
  imageCarte[11] = loadImage("QP.png");
  imageCarte[12] = loadImage("KP.png");

  imageCarte[13] = loadImage("AC.png");
  imageCarte[14] = loadImage("2C.png");
  imageCarte[15] = loadImage("3C.png");
  imageCarte[16] = loadImage("4C.png");
  imageCarte[17] = loadImage("5C.png");
  imageCarte[18] = loadImage("6C.png");
  imageCarte[19] = loadImage("7C.png");
  imageCarte[20] = loadImage("8C.png");
  imageCarte[21] = loadImage("9C.png");
  imageCarte[22] = loadImage("10C.png");
  imageCarte[23] = loadImage("JC.png");
  imageCarte[24] = loadImage("QC.png");
  imageCarte[25] = loadImage("KC.png");

  imageCarte[26] = loadImage("AT.png");
  imageCarte[27] = loadImage("2T.png");
  imageCarte[28] = loadImage("3T.png");
  imageCarte[29] = loadImage("4T.png");
  imageCarte[30] = loadImage("5T.png");
  imageCarte[31] = loadImage("6T.png");
  imageCarte[32] = loadImage("7T.png");
  imageCarte[33] = loadImage("8T.png");
  imageCarte[34] = loadImage("9T.png");
  imageCarte[35] = loadImage("10T.png");
  imageCarte[36] = loadImage("JT.png");
  imageCarte[37] = loadImage("QT.png");
  imageCarte[38] = loadImage("KT.png");

  imageCarte[39] = loadImage("AH.png");
  imageCarte[40] = loadImage("2H.png");
  imageCarte[41] = loadImage("3H.png");
  imageCarte[42] = loadImage("4H.png");
  imageCarte[43] = loadImage("5H.png");
  imageCarte[44] = loadImage("6H.png");
  imageCarte[45] = loadImage("7H.png");
  imageCarte[46] = loadImage("8H.png");
  imageCarte[47] = loadImage("9H.png");
  imageCarte[48] = loadImage("10H.png");
  imageCarte[49] = loadImage("JH.png");
  imageCarte[50] = loadImage("QH.png");
  imageCarte[51] = loadImage("KH.png");

  back = loadImage("dos.png");
  imageIA = new PImage[12];

  fond_morpion = loadImage("fond_arcadenewDim.png");
  croix_rouge = loadImage("croix_rouge.png");
  croix_rouge.resize(166, 166);
  cercle_bleu = loadImage("cercle_bleu.png");
  cercle_bleu.resize(166, 166);
  titreMorpion = loadImage("titreMorpion.png");
}

void draw() {
  if (mainMenu==true) {
    background(0);
    strokeWeight(1);
    stroke(255);
    
    fill(255);
    textSize(40);
    text("The Minigames compilation", 380, 150);
     noFill();
    rect(350, 400, 280, 280);
    text("Black Jack",392, 550);
    if (mouseX>=350 && mouseX<=630 &&
      mouseY>=400 && mouseY<=680) {
      stroke(100);
      //fill(255);
      rect(350, 400, 280, 280);
      /*fill(0);
      text("Black Jack",392, 550);
      fill(255);
      noFill();*/
      if (mousePressed==true) {
        black_jack=true;
        mainMenu=false;
      }
    }

    stroke(255);
    rect(50, 400, 280, 280);
    image(titreMorpion,50,400);
    if (mouseX>=50 && mouseX<=330 &&
      mouseY>=400 && mouseY<=680) {
      stroke(100);
      rect(50, 400, 280, 280);
      if (mousePressed==true) {
        morpion=true;
        mainMenu=false;
      }
    }
    
    stroke(255);
    rect(650, 400, 280, 280);
    //title here
    if (mouseX>=650 && mouseX<=930 &&
      mouseY>=400 && mouseY<=680) {
      stroke(100);
      rect(650, 400, 280, 280);
      if (mousePressed==true) {
        //DDR=true;
        //mainMenu=false;
      }
    }
    
    stroke(255);
    rect(950, 400, 280, 280);
    //title here
    if (mouseX>=950 && mouseX<=1230 &&
      mouseY>=400 && mouseY<=680) {
      stroke(100);
      rect(950, 400, 280, 280);
      if (mousePressed==true) {
        //Ping=true;
        //mainMenu=false;
      }
    }
    
    textSize(20);
    text("made in 2018", width - 150,height-50);
    text("by Marvin Libam", width-170,height-20);
    text("Press 'ENTER' to return to title screen", 10,height-20);
  }

  if (black_jack==true && mainMenu==false)
    black_jack();

  if (morpion==true && mainMenu==false)
    morpion();
}
