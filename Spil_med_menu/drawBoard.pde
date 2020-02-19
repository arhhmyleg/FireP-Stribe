
void board(){
  drawBoard(); 

  if(vinder() == 0){

  }
  else{
    fill(0,175);
    rect(width/10,height/2.3,1025,65);
    fill(255);
    textSize(60);
    text("Player "+vinder()+ " wins. Mellemrum restarter", width/10, height/2);
if(keyPressed && key == ' ' ){
 restart(); 
}
  if(keyPressed && key == ENTER){
     drawBoard(); 
  }
}

}

int nextSpace(int x) {
  for(int y=h-1; y >=0; y--) if(board[y] [x] == 0) return y;
  return -1;
}

void restart(){
  for (int y = 0; y < h; y++)
  for (int x = 0; x < w; x++)
  board[y][x] = 0;
  player = 1;
  
}

void mousePressed() { //en funktion som bruges at at bestemme om musen er klikket
    playerMove(); //kalder funktionen playerMove
    
}

/*boolean highlight ( int x, int y, int w, int h){
  println(x);
  if(mouseX < x+w && mouseX >x && mouseY< y+h && mouseY >y){
    return(true);
  }else {
    return(false);
  }
  
}*/

void drawBoard() {
  for (int row=0;row<h;row++){ // den laver felterne uden at tegne dem på y-aksen
    for (int col=0;col<w;col++){// den laver felterne uden at tegne dem på x-aksen
       fill(0,0,255); //hvis den ikke er der, farver den hele spillepladen
        rect(col * cellWidth, row * cellHeight, cellWidth, cellHeight);
        fill(255);
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20);
        vinder=vinder();

      if (board[row][col] == 1) { //hvis det er spiller 1
        fill(green); //den farver grøn
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den grøn
    } else if (board[row][col] == 2){ //hvis det er spiller 2
        fill(yellow); //den farver gul
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den gul
    } else if (board[row][col] == 3){ //hvis det er spiller 3
        fill(red); //den farver rød
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
        //den tegner en firkant inde i cellen og maler den rød
    }else if (board[row][col] == 4){ //hvis det er spiller 4
        fill(orange); //den farver orange
        ellipse(col * cellWidth + 10, row * cellHeight + 10, cellWidth - 20, cellHeight - 20); 
    }
  }
}
  
}
//Skifter spiller og farve i forhold til vinderen
void playerMove() { 
  if(vinder == 0){
  int x = int(mouseX / cellWidth), y = nextSpace(x);
  if(y>=0 && state == 1 || state == 2 || state == 3){
    board[y][x] = player;
    if(state == 1){
    //Brug denne for 2 spillere
    player = player == 1?2:1;
    }if(state == 2){
   
    //Brug denne for 3 spillere
    if(player == 1 && mousePressed){
     player = 2;}
     else { player = player == 2?3:1; }
     
    }
    if(state == 3){
   
    //Brug denne for 4 spillere
    if(player == 1 && mousePressed){
     player = 2; 
     
   } else if(player == 2 && player < 5){
     player++;
 }else if(player == 3 && player < 5){
  player++; 
 }else if(player == 4 && player < 5){
   player = 1;
 }
  }
  }
  }

}

//p bruges i udregningen af vinder
int p(int y, int x) {
 return ( y < 0 || x < 0 || y >= h || x >= w) ? 0 : board[y][x];
 
  
}
//Udregning af vinder
int vinder(){

  for (int y = 0; y < h; y++)
  for (int x = 0; x < w; x++)
  
  if(p(y,x) != 0 && p(y,x) == p(y,x+1) && p(y,x)==p(y,x+2)&&p(y,x)==p(y,x+3))
  return(p(y,x));
  
  for (int y = 0; y < h; y++)
  for (int x = 0; x < w; x++)
  
  if(p(y,x) != 0 && p(y,x) == p(y+1,x) && p(y,x)==p(y+2,x)&&p(y,x)==p(y+3,x))
  return(p(y,x));
  
  for (int y = 0; y < h; y++)
  for (int x = 0; x < w; x++)
  for (int d=-1; d <= 1; d+=2)
  
  if(p(y,x) !=0 && p(y,x) == p(y+1*d,x+1) && p(y,x)==p(y+2*d,x+2)&&p(y,x)==p(y+3*d,x+3))
  return(p(y,x));
  
  for (int y = 0; y < h; y++)
  for (int x = 0; x < w; x++)
  if(p(y,x)==0) return(0);
  
  return(-1);
  
  
  }
  
