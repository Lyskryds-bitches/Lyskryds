int CarCount = 12;
Trafik0 t1, t2, t3, t4;


Bil[] bilListe = new Bil[CarCount];

void setup() {
  size(1600, 800);
  rectMode(CENTER);
  for(int i=0;i<bilListe.length;i++){
    bilListe[i]=new Bil((int)random(1,6), random(width), 0.0f,i);
  }
  /*t1 = new Trafik0(290, 230);
  t1.setState(0);*/

  t2 = new Trafik0(565, 230);
  t2.setState(8);
  
  /*t3 = new Trafik0(480,480);
  t3.setState(0);*/
  
  t4 = new Trafik0(705,480);
  t4.setState(8);
}
void draw() {
  background(225);
  drawRoads();
  
  if(frameCount%60==0){
  changeLght();
  }
 
 //t1.drawTrafik0();
  t2.drawTrafik0();
  //t3.drawTrafik0();
  t4.drawTrafik0();
  
 
  for(int i=0;i<bilListe.length;i++){
    for(int j=0;j<bilListe.length;j++){
      bilListe[i].checkCollision(bilListe[j]);
    }
    if(bilListe[i].getspeed()==0){
      bilListe[i].setspeed(1);
    }
    bilListe[i].move();
    bilListe[i].displayBilhv();
    
  }  
}


void drawRoads(){

//Sorte veje
  //fill(0);
  //rect(350,0,100,800);
  fill(0);
  rect(0,400,width,100);
  
  //Lodret vej strej
  /*fill(255);
  rect(395,0,10,350);
  fill(255);
  rect(395,450,10,350);*/
  
  //Vandret vej strej
  fill(255);
  rect(0,395,width,10);
  fill(255);
  //rect(705,395,700,10);
  
  //Stop streje
  fill(255);
  //rect(600,350,5,100);
  fill(255);
  //rect(700,350,5,100);
  /*fill(255);
  rect(350,345,100,5);
  fill(255);
  rect(350,450,100,5);*/
  

  
}

void changeLght(){
//print(t1.getState()+" ");
  println(t2.getState());

  /*if (t1.getState()<15) {
    t1.setState(t1.getState()+1);
  } else {
    t1.setState(0);
  }*/

  if (t2.getState()<15) { 
    t2.setState(t2.getState()+1);
  } else {
    t2.setState(0);
  }
  
  /*if (t3.getState()<15) { 
    t3.setState(t3.getState()+1);
  } else {
    t3.setState(0);
  }*/
  
  if (t4.getState()<15) { 
    t4.setState(t4.getState()+1);
  } else {
    t4.setState(0);
  }
  
 
}
