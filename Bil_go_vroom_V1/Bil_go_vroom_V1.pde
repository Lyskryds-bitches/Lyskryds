
<<<<<<< Updated upstream
Bil bil1, bil2, bil3, bil4, bil5, bil6, bil7, bil8;

void setup() {
  size(800, 800);
  bil1=new Bil(1, 0.0f, 0.0f);
  bil2=new Bil(2, 0.0f, 0.0f);
  bil3=new Bil(2, 0.0f, 0.0f);
  bil4=new Bil(1, 0.0f, 0.0f);
  bil5=new Bil(1, 0.0f, 0.0f);
  bil6=new Bil(2, 0.0f, 0.0f);
  bil7=new Bil(1, 0.0f, 0.0f);
  bil8=new Bil(2, 0.0f, 0.0f);
}
/*boolean crasha(){
 if(bil1.getxpos()>bil2.getxpos()+50&&bil1.getxpos()<bil2.getxpos()&&bil2.getspeed()>=1 ){
      return true;
    } else{
    return false;
    }
=======
int CarCount = 12;

Bil[] bilListe = new Bil[CarCount];
Trafik0 t2, t4;
void setup() {
  size(1600, 800);
  rectMode(CENTER);
  for (int i=0; i<bilListe.length; i++) {
    bilListe[i]=new Bil((int)random(1, 6), random(width), 0.0f, i);
  }
  t2 = new Trafik0(565, 230);
  t2.setState(8);
  t4 = new Trafik0(705, 480);
  t4.setState(8);
}
/*void loop(){
 t2.drawTrafik0();
  t4.drawTrafik0();
  fill(0);
  rect(0,350,1600,100);
  fill(255);
  rect(0,395,600,10);
  rect(705,395,700,10);
  rect(600,350,5,100);
  rect(700,350,5,100);
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

//delay(1000); 
>>>>>>> Stashed changes
}*/
void draw() {

  fill(200);
<<<<<<< Updated upstream
  rect(0, 0, 800, 800);
  bil1.displayBilhv();
  println(width, bil1.getxpos(), bil2.getxpos(), bil3.getxpos(), bil4.getxpos(), bil5.getypos(), bil6.getypos(), bil7.getypos(), bil8.getypos());
  if (bil1.getxpos()<800/bil1.getspeed()) {
    bil1.setxpos(bil1.getxpos()+1);
  } else {
    bil1.setxpos(-20);
  }

  bil2.displayBilhv();
  if (bil2.getxpos()<800/bil2.getspeed()) {
    bil2.setxpos(bil2.getxpos()+1);
  } else {
    bil2.setxpos(-100);
  }
  if (bil2.crash()==true){
   bil2.setspeed(1); 
  }else{
  bil2.setspeed(2);
  }
  
  //boolean crasha = true;
    
  /*  crasha=false;
    if(crasha){
    bil1.getxpos()>bil2.getxpos()+50&&bil1.getxpos()<bil2.getxpos()&&bil2.getspeed()>=1;
    }
  while (bil1.getxpos()<=bil2.getxpos()+50 && bil1.getxpos()>=bil2.getxpos()&& bil2.getspeed()>1) {
    bil2.setspeed(1);
    //if (bil1.getxpos()
  }*/
  bil3.displayBilvv();
  if (bil3.getxpos()>-840/bil3.getspeed()) {
    bil3.setxpos(bil3.getxpos()-1);
  } else {
    bil3.setxpos(20);
  }
  bil4.displayBilvv();
  if (bil4.getxpos()>-840/bil4.getspeed()) {
    bil4.setxpos(bil4.getxpos()-1);
  } else {
    bil4.setxpos(20);
  }
  bil5.displayBilln();
  if (bil5.getypos()<800/bil5.getspeed()) {
    bil5.setypos(bil5.getypos()+1);
  } else {
    bil5.setypos(-20);
  }
  bil6.displayBilln();
  if (bil6.getypos()<800/bil6.getspeed()) {
    bil6.setypos(bil6.getypos()+1);
  } else {
    bil6.setypos(-20);
  }
  bil7.displayBillo();
  if (bil7.getypos()>-840/bil7.getspeed()) {
    bil7.setypos(bil7.getypos()-1);
  } else {
    bil7.setypos(20);
  }
  bil8.displayBillo();
  if (bil8.getypos()>-840/bil8.getspeed()) {
    bil8.setypos(bil8.getypos()-1);
  } else {
    bil8.setypos(20);
  }
=======

  
  for (int i=0; i<bilListe.length; i++) {
    for (int j=0; j<bilListe.length; j++) {
      bilListe[i].checkCollision(bilListe[j]);
    }
    if (bilListe[i].getspeed()==0) {
      bilListe[i].setspeed(1);
    }
    bilListe[i].move();
    bilListe[i].displayBilhv();
  }
  t2.drawTrafik0();
  t4.drawTrafik0();
  fill(0);
  rect(0,350,1600,100);
  fill(255);
  rect(0,395,600,10);
  rect(705,395,700,10);
  rect(600,350,5,100);
  rect(700,350,5,100);
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

//delay(1000);
>>>>>>> Stashed changes
}
