int CarCount = 12;
Trafik0  t2, t4;
int i=0;

Bil[] bilListe = new Bil[CarCount];

void setup() {
  size(1600, 800);
  rectMode(CENTER);
  for (int i=0; i<bilListe.length; i++) {
    bilListe[i]=new Bil((int)random(1, 6), random(width), height/2+25, i);
  }

  t2 = new Trafik0(width/2+50, height/2-100);
  t2.setState(8);

  t4 = new Trafik0(width/2-50, height/2+100);
  t4.setState(8);
}
void draw() {
  background(225);
  drawRoads();

  if (frameCount%60==0) { // skift en state i trafiklyset hvert sekund
    changeLght();
  }

  t2.drawTrafik0();
  t4.drawTrafik0();


  for (int i=0; i<bilListe.length; i++) {
    //for (int j=0; j<bilListe.length; j++) { skal ikke indlægges i rapporten
      bilListe[i].checkCollision(bilListe[i]);
    }
    if (bilListe[i].getspeed()==0) {
      bilListe[i].setspeed(1);
    }

    if (t4.getDistToLight(bilListe[i].location)<78&&t4.getState()>=6&&t4.getState()<=15){
     bilListe[i].setspeed(0);
    }else{
    bilListe[i].setspeed(3);
    }
  //} skal heller ikke med i rapporten
  bilListe[i].move();
  bilListe[i].displayBil();
}  


void drawRoads() {

  //Sorte veje
  rectMode(CORNER);
  fill(0);
  rect(0, height/2-50, width, 100);

  //Vandret vej streg
  fill(255);
  rect(0, 395, width, 10);

  //Stop strege
  rect(width/2-50, height/2-50, 5, 100);
  rect(width/2+50, height/2-50, 5, 100);

  rectMode(CENTER);
}

void changeLght() {


  if (t2.getState()<15) { 
    t2.setState(t2.getState()+1);
  } else {
    t2.setState(0);
  }

  if (t4.getState()<15) { 
    t4.setState(t4.getState()+1);
  } else {
    t4.setState(0);
  }
}
