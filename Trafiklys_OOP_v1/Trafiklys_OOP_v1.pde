Trafik0 t;
Lys0 l;

void setup() {
  size (600,600);
}

void draw(){
  t = new Trafik0();
  t.drawTrafik0();
  
  l = newLys0();
  l.drawLys0();
}

class Trafik0{
  void drawTrafik0(){
    fill(0);
    rect(100,100,30,90);
  }
}

class Lys0{
  void drawLys0(){
    fill(125); 
    //Lav cirkel(Alle cirkler)
  }
}
