int state = 0;
//Til menuen
PFont font;
color rect1 = color(99,52,36);
color rect2 = color(99,52,36);
color rect3 = color(99,52,36);
//float dis1;
//float dis2;
//float dis3;

//Til spillepladen
int h = 6, w = 8;
int board [][] = new int [h][w]; //array for spillepladen 6x8 = y*x
int cellWidth, cellHeight; //funktioner for spillepladen

int player = 1; //den starter med player 1

color green = color(0,255,0); //farver til spillerne
color yellow = color(255,255,0); // farver til spillerne
color red = color(255,0,0); //farver til spillerne
color orange = color(255,165,0);

  
void setup(){
  size(1200,840);
  ellipseMode(CORNER);
  rectMode(CORNER);
  cellWidth = width/w; //regner ud hvor mange felter man vil have og hvor stor skal firkanten så være
  cellHeight = height/h; //det samme som ovenover, bare på y-aksen
}


void draw(){
  background(255);
 if (state == 0){
   Menu();
 } 
 if (state == 1){
  board();
 }
 if (state == 2){
   board();
 }
 //if (state == 3){
 //  board();
 //}
  
  
  
  
  
}
