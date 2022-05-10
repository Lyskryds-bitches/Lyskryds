Trafik0 t1, t2, t3, t4;


void setup() {
  size (600, 600);

  // draw looper 60 gange og i vil ikke oprette variabler så mange gange. 
  t1 = new Trafik0(100, 100);
  t2 = new Trafik0(200, 100);
  t3 = new Trafik0(300,100);
  t4 = new Trafik0(400,100);
}

void draw() {
  background (255); // tagn forfra hver gang draw looper
  t1.setState(1); // besten hvilken tilstand lyset skal have
  t1.drawTrafik0();
  t1.setState(0); // besten hvilken tilstand lyset skal have
  t2.drawTrafik0();
  t3.drawTrafik0();
  t4.drawTrafik0();
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
    case 3:
      roedgul();
    case 4:
      gul();
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
  
  void roedgul() {
    fill(255,0,0);
    circle(15,15,25);
    fill(255,255,0);
    circle(15,45,25);
    fill(125);
    circle(15,75,25);
  }
  
  void gul() {
    circle(15,15,25);
    fill(255);
    circle(15,45,25);
    circle(15,75,25);
    
  }
}

class Lys0 {
  void drawLys0() {
    fill(125); 
    //Lav cirkel(Alle cirkler)
  }
}
