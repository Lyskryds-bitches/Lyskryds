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
  t1.drawTrafik0();
  t2.drawTrafik0();
  t3.drawTrafik0();
  t4.drawTrafik0();
  
  if (t1.getState()<15 && t3.getState()>=0){
  t1.setState(t1.getState()+1);
  t3.setState(t3.getState()+1);
  
  t2.setState(0);
  
  delay(600);
}
}
