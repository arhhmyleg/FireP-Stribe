int board [][] = new int [6][8]; //array for spillepladen 8x8 = y*x
int cellWidth, cellHeight; //funktioner for spillepladen
int player = 1; //den starter med player 1

color green = color(0,255,0); //farver til spillerne
color yellow = color(255,255,0); // farver til spillerne
color red = color(255,0,0); //farver til spillerne

void setup(){
  size(1200,840); //størelsen på skærmen
  ellipseMode(CORNER);
  cellWidth = width/8; //regner ud hvor mange felter man vil have og hvor stor skal firkanten så være
  cellHeight = height/6; //det samme som ovenover, bare på y-aksen
}

void draw(){
  background(255);
  drawBoard(); 
}


void mouseClicked() { //en funktion som bruges at at bestemme om musen er klikket
    playerMove(); //kalder funktionen playerMove
}

void drawBoard() {
  for (int row=0;row<6;row++){ // den laver felterne uden at tegne dem på y-aksen
    for (int col=0;col<8;col++){// den laver felterne uden at tegne dem på x-aksen
      fill(0,0,255); //hvis den ikke er der, farver den hele spillepladen
        rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
      fill(255);
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20);
      if (board[row][col] == 1) { //hvis det er spiller 1
        fill(green); //den farver grøn
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den grøn
    } else if (board[row][col] == 2){ //hvis det er spiller 2
        fill(yellow); //den farver gul
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den gul
    } else if (board[row][col] == 3){ //hvis det er spiller 2
        fill(red); //den farver rød
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den rød
    }
    }
    
     // rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
     // fill(255);
     // ellipse(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
      // den optegner felter på spillepladen, så man kan se hvor de er

    }
  }
  
/*
void paintCell(int row, int col) {
  noFill(); //hvis den ikke er der, farver den hele spillepladen
  rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight); 
  // den optegner felter på spillepladen, så man kan se hvor de er
  
  if (board[row][col] == 1) { //hvis det er spiller 1
    fill(green); //den farver grøn
    rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight); 
    //den tegner en firkant inde i cellen og maler den grøn
  } else if (board[row][col] == 2){ //hvis det er spiller 2
    fill(yellow); //den farver gul
    rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
    //den tegner en firkant inde i cellen og maler den gul
  } else if (board[row][col] == 3){ //hvis det er spiller 2
    fill(red); //den farver rød
    rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
    //den tegner en firkant inde i cellen og maler den rød
}
}*/
  
//Brug denne til mere end fire spillere

  /*switch (board[row][col]) {// ligesom if else, den kan bare skifte mellem 
    case 1: //hvis det er spiller 1
      fill(green); //den farver grøn
      rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight); 
      //den tegner en firkant inde i cellen og maler den grøn
      break;
      case 2: //hvis der er spiller 2
      fill(yellow); //den farver gul
      rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
      //den tegner en firkant inde i cellen og maler den gul
      break;
      case 3:
      fill(red);
      rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
      break;
  }
} */

void playerMove() { 
  int row = mouseY / cellHeight; //den følger musen på y-aksen
  int col = mouseX / cellWidth; //den følger musen på x-aksen

  
 if (board[row][col] == 0) { // hvis der allerede er tegnet noget
    board[row][col] = player; // så bliver det lavet om til at være spilleren med den farve
    player = modstander(); // som bliver lavet om til at være den spiller fra starten
  }
}

int modstander(){ //funktion for modstander
  return player = 3 - player;
}
