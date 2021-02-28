void victoire(short a,short b,short c,short d,short e,short f,short g,short h,short j,byte modJeu){
  textSize(40);
   
  if ((a == b) && (b == c)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 217, 900, 217);
      fin=true;
      }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(150,0,255);
      strokeWeight(15);
      line(390, 217, 900, 217);
      fin=true;
    }
  }
  
  if ((d == e) && (e == f)){
    if (d==1 && modJeu==0 || d==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 390, 900, 390);
      fin=true;
    }
    if (d==2 && modJeu==0 || d==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 390, 900, 390);
      fin=true;
    }
  }
  
  if ((g == h) && (h == j)){
    if (g==1 && modJeu==0 || g==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 564, 900, 564);
      fin=true;
    }
    if (g==2 && modJeu==0 || g==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 564, 900, 564);
      fin=true;
    }
  }
  
  if ((a == d) && (d == g)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(472, 133, 472, 647);
      fin=true;
    }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(472, 133, 472, 647);
      fin=true;
    }
  }
  
  if ((b == e) && (e == h)){
    if (b==1 && modJeu==0 || b==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(645, 133, 645, 647);
      fin=true;
    }
    if (b==2 && modJeu==0 || b==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(645, 133, 645, 647);
      fin=true;
    }
  }
  
  if ((c == f) && (f == j)){
    if (c==1 && modJeu==0 || c==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(820, 133, 820, 647);
      fin=true;
    }
    if (c==2 && modJeu==0 || c==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(820, 133, 820, 647);
      fin=true;
    }
  }
  
  if ((a == e) && (e == j)){
    if (a==1 && modJeu==0 || a==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(390, 133, 900, 642);
      fin=true;
    }
    if (a==2 && modJeu==0 || a==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(390, 133, 900, 642);
      fin=true;
    }
  }
  
  if ((c == e) && (e == g)){
    if (c==1 && modJeu==0 || c==2 && modJeu==1){
      joueur=1;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(255,105,0);
      strokeWeight(15);
      line(900, 133, 390, 642);
      fin=true;
    }
    if (c==2 && modJeu==0 || c==1 && modJeu==1){
      joueur=2;
      fill(255);
      text("WIN",(width/2)+220,height/6);
      stroke(105,0,255);
      strokeWeight(15);
      line(900, 133, 390, 642);
      fin=true;
    }
  }
  
  if (a!=0 && b!=0 && c!=0 && d!=0 && e!=0 && f!=0 && g!=0 && h!=0 && j!=0 && fin==false){
    fill(255);
    joueur=0;
    text("Match Nul",(width/2)+100,height/6);
  }
}