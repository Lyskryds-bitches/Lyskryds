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
      groen();
      break;
    case 1:
      groen();
      break;
    case 2: 
      groen();
      break;
    case 3:
      groen();
      break;
    case 4:
      groen();
      break;
    case 5:
      gul();
      break;
    case 6:
      roed();
      break;
    case 7:
      roed();
      break;
    case 8:
      roed();
      break;
    case 9:
      roed();
      break;
    case 10:
      roed();
      break;
    case 11:
      roed();
      break;
    case 12:
      roed();
      break;
    case 13:
      roed();
      break;
    case 14:
      roed();
      break;
    case 15:
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
