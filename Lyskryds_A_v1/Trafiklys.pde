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
  
  void roedgul() {
    fill(255,0,0);
    circle(15,15,25);
    fill(255,255,0);
    circle(15,45,25);
    fill(125);
    circle(15,75,25);
  }
  
  void gul() {
    fill(125);
    circle(15,15,25);
    fill(255,255,0);
    circle(15,45,25);
    fill(125);  
    circle(15,75,25);
    
  }
}
