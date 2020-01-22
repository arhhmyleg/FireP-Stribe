void Menu() {
  
  font = createFont("Arial",32);
  textFont(font);
  //rectMode(CENTER);



  //dis1 = dist(width/2,400,mouseX,mouseY);
 // dis2 = dist(width/2,560,mouseX,mouseY);
 // dis3 = dist(width/2,720,mouseX,mouseY);
  
  fill(0);
  text("Menu", 360,200);
  noFill();
  rect(360,200,80,1);
  
  
  text("2 Player", 340,450);
  fill(rect1);
  rect(width/2,400,100,100);
  fill(0);
  text("3 Player", 340,610);
  fill(rect2);
  rect(width/2,560,100,100);
  fill(0);
  text("4 Player", 340,770);
  fill(rect3);
  rect(width/2,720,100,100);
  
  if (mouseX - width/2 -55 < 50 && mouseX - width/2 -50 > -55 && mouseY - 455 < 50 && mouseY - 450 > -55){
    rect1 = color(128,90,70);
    if (mouseX - width/2 -55 < 50 && mouseX - width/2 -50 > -55 && mouseY - 455 < 50 && mouseY - 450 > -55 && mousePressed){
      state = 1;
    }
  } else {
    rect1 = color(99,52,36);
  }
  if (dis2 < 100){
    rect2 = color(128,90,70);
    if (dis2 < 100 && mousePressed){
      state = 2;
  } else {
    rect2 = color(99,52,36);
  }
 if (dis3 < 100){
    rect3 = color(128,90,70);
  } else {
    rect3 = color(99,52,36);
  }
  
}
//}


/*
void mouseClicked(){
 2Player();
 //3Player();
// 4Player();
}

void 2Player(){
 if (dis1 < 100){
   toPlayer();
  }
}

//void 3Player(){
// if (dis2 < 100){
 //  threePlayer();
 // }
//}

//void 4Player(){
// if (dis3 < 100){
 //  fourPlayer();
 // }
//}

  
  
}*/
