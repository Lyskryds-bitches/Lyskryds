/*int b = 1;
int h = 1;
int v = 200;
int t = 200;*/
Bil bil1, bil2;

void setup() {
  size(800, 800);
  bil1=new Bil(1, 0.0f, 0.0f);
  bil2=new Bil(2, 20.0f, 0.0f);
  //bil2.speed=5;
}
void draw() {
 /* if (h>=250||b>=250||v<=-50||t<=-50) {
    h = 0;
    b = 0;
    v = 200;
    t = 200;
  }*/
  fill(200);
  //rect(0, 0, displayWidth, displayHeight);
  rect(0,0,800,800);
  bil1.displayBil();
  println(width,bil1.getxpos());
  if(bil1.getxpos()<width){
  bil1.setxpos(bil1.getxpos()+1);
  }
  else{
  bil1.setxpos(-20);
  }
  bil2.displayBil();
  bil2.setxpos(bil2.getxpos()+1);
  /*pushMatrix();
  translate(displayWidth/200*t+displayWidth/50, displayHeight/100*48);
  fill(0);
  rect(0, 0, displayWidth/50, displayHeight/50);  // Black rectangle
  popMatrix();
  t--;
  pushMatrix();
  translate(displayWidth/100*48, displayHeight/200*h-displayHeight/50);
  fill(255);
  rect(0, 0, displayWidth/100, displayHeight/25);
  popMatrix();
  h++;
  pushMatrix();
  translate(displayWidth/100*52, displayHeight/200*v+displayHeight/50);
  fill(255);
  rect(0, 0, displayWidth/100, displayHeight/25);
  popMatrix();
  v--;*/
}
