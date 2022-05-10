Trafik0 t1, t2;


void setup() {
  size (800, 800);

  // draw looper 60 gange og i vil ikke oprette variabler så mange gange. 
  t1 = new Trafik0(100, 100);
  t1.setState(0);

  t2 = new Trafik0(200, 100);
  t2.setState(8);
}
void draw() {
  background (255); // tagn forfra hver gang draw looper
  t1.drawTrafik0();
  t2.drawTrafik0();
  fill(0);
  rect(350,0,100,800);
  fill(0);
  rect(0,350,800,100);
  fill(255);
  rect(395,0,10,800);
  fill(255);
  rect(0,395,800,10);
  

  print(t1.getState()+" ");
  println(t2.getState());

  if (t1.getState()<15) {
    t1.setState(t1.getState()+1);
  } else {
    t1.setState(0);
  }

  if (t2.getState()<15) { 
    t2.setState(t2.getState()+1);
  } else {
    t2.setState(0);
  }
  delay(300);
  
}
