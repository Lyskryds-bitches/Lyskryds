Trafik0 t1, t2,t3,t4;


void setup() {
  size (600, 600);

  // draw looper 60 gange og i vil ikke oprette variabler så mange gange. 
  t1 = new Trafik0(220, 340);
  t2 = new Trafik0(350, 170);
  t3 = new Trafik0(220,170);
  t4 = new Trafik0(350,340);
}

void draw() {
  background (255);// tagn forfra hver gang draw looper
  DrawVej();
  t1.setState(1); // besten hvilken tilstand lyset skal have
  t1.drawTrafik0();
  t2.setState(2);
  t2.drawTrafik0();
  t3.setState(0); // besten hvilken tilstand lyset skal have
  t3.drawTrafik0();
  t4.setState(3);
  t4.drawTrafik0();
}
void DrawVej(){
  noStroke();
  rect(0,280,600,40);
  rect(280,0,40,600);
}
class Trafik0 {

  int xpos, ypos;
  int lengde =30; // ingen æøå :)
  int hoejde = 90;
  int state; // er lyset rød eller grøn

  // konstruktøren
  Trafik0(int xpos, int ypos) {
    this.xpos = xpos;
    this.ypos = ypos;
  }

  void drawTrafik0() {
    pushMatrix();
    translate(xpos, ypos);
    fill(0);
    rect(0, 0, lengde, hoejde);

    switch(state)
    {
    case 0: 
      roed();
      break;
    case 1: 
      groen();
      break;
      case 2:
      gul();
      break;
      case 3:
      roedgul();
      break;
    }

    popMatrix();
  }


  void setState(int state){
    this.state=state;
  }


  void roed() {
    fill(255, 0, 0);
    circle(15, 15, 25);
    fill(125);
    circle(15, 45, 25);
    circle(15, 75, 25);
  }

  void groen() {
    fill(125);
    circle(15, 15, 25);
    circle(15, 45, 25);
    fill(0, 255, 0);
    circle(15, 75, 25);
  }
  void gul(){
fill(255,255,0);
    circle(15, 45, 25);
    fill(125);
    circle(15, 75, 25);
    circle(15, 15, 25);
  }
  void roedgul(){
    fill(255, 0, 0);
    circle(15, 15, 25);
    fill(255,255,0);
    circle(15, 45, 25);
    fill(125);
    circle(15, 75, 25);
  }
}

class Lys0 {
  void drawLys0() {
    fill(125); 
    //Lav cirkel(Alle cirkler)
  }
}