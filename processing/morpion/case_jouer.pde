//détermination de la case jouée 
void case_jouer(){
   if (mousePressed==true) { 
       if (mouseY>=133 && mouseY<=300) {
          if (mouseX>=390 && mouseX<=557 && a==0)
            if (joueur==1) { a=1; joueur=2; }
            else { a=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && b==0)
            if (joueur==1) { b=1; joueur=2; }
            else { b=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && c==0)
            if (joueur==1) { c=1; joueur=2; }
            else { c=2; joueur=1; }
       }
       
        if (mouseY>=307 && mouseY<=473) {
          if (mouseX>=390 && mouseX<=557 && d==0)
            if (joueur==1) { d=1; joueur=2; }
            else { d=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && e==0)
            if (joueur==1) { e=1; joueur=2; }
            else { e=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && f==0)
            if (joueur==1) {f=1; joueur=2; }
            else { f=2; joueur=1; }
        }
        
        if (mouseY>=480 && mouseY<=647) {
          if (mouseX>=390 && mouseX<=557 && g==0)
            if (joueur==1) { g=1; joueur=2; }
            else { g=2; joueur=1; }
          if (mouseX>=563 && mouseX<=723 && h==0)
            if (joueur==1) { h=1; joueur=2; }
            else { h=2; joueur=1; }
          if (mouseX>=730 &&mouseX<=900 && j==0)
            if (joueur==1) { j=1; joueur=2; }
            else { j=2; joueur=1; }
        }     
   }
}