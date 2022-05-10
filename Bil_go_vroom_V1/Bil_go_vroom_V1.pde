
//Bil bil1, bil2, bil3, bil4, bil5, bil6, bil7, bil8;
int CarCount = 12;

Bil[] bilListe = new Bil[CarCount];

void setup() {
  size(1600, 800);
  rectMode(CENTER);
  for(int i=0;i<bilListe.length;i++){
    bilListe[i]=new Bil((int)random(1,6), random(width), 0.0f,i);
  }
  
  //bil1=new Bil(1, 0.0f, 0.0f);
  //bil2=new Bil(2, 0.0f, 0.0f);
  //bil3=new Bil(2, 0.0f, 0.0f);
  //bil4=new Bil(1, 0.0f, 0.0f);
  //bil5=new Bil(1, 0.0f, 0.0f);
  //bil6=new Bil(2, 0.0f, 0.0f);
  //bil7=new Bil(1, 0.0f, 0.0f);
  //bil8=new Bil(2, 0.0f, 0.0f);
}
void draw() {
  background(225);
  fill(200);
  //??rect(0, 0, 800, 800);
  
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
  
  //println(width, bil1.getxpos(), bil2.getxpos(), bil3.getxpos(), bil4.getxpos(), bil5.getypos(), bil6.getypos(), bil7.getypos(), bil8.getypos());
  /*
  if (bilListe[i].getxpos()<800/bilListe[i].getspeed()) {
    bilListe[i].setxpos(bilListe[i].getxpos()+1);
  } else {
    bilListe[i].setxpos(-20);
  }
  */
  
}
