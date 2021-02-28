void IA() {
  delay(800);
  if (pointAI<21) {

    if (pointAI==18 && AsIA==0) {
      int r = (int) random(0, 5);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==19 && AsIA==0) {
      int r = (int) random(0, 10);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==20) 
      finIA=true;

    if (pointAI==15 || pointAI==16 && AsIA==0) {
      int r = (int) random(0, 3);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==14 || pointAI==13 || pointAI==12 && AsIA==0) {
      int r = (int) random(0, 5);
      if (r!=0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI==17 && AsIA==0) {
      int r = (int) random(0, 4);
      if (r==0)
        tirerIA();
      else finIA=true;
    }

    if (pointAI<12 || AsIA!=0)
      tirerIA();
  }

  if (pointAI>=21) 
    finIA=true;
}