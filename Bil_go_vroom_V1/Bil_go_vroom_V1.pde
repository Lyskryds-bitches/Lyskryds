int b = 1;
int h = 1;
int v = 200;
int t = 200;
Bil bil1, bil2;

void setup() {
  size(displayWidth, displayHeight);
  bil1=new Bil(10, 0.0f, 0.0f);
  bil2=new Bil(20, 10.0f, 0.0f);
}
void draw() {
  if (h>=250||b>=250||v<=-50||t<=-50) {
    h = 0;
    b = 0;
    v = 200;
    t = 200;
  }
  fill(200);
  rect(0, 0, displayWidth, displayHeight);
  bil1.displayBil();
  bil1.setxpos(bil1.getxpos()+1);
    bil2.displayBil();
  bil2.setxpos(bil1.getxpos()+5);
  pushMatrix();
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
  v--;
}
