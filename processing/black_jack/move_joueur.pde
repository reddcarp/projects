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