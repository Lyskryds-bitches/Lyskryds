
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
void draw() {

  fill(200);
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
    bil2.setxpos(-50);
  }
  if (bil1.getxpos()<=bil2.getxpos()+50 && bil1.getxpos()>=bil2.getxpos()&& bil2.getspeed()>1) {
    bil2.setspeed(bil2.getspeed()-1);
  } else{
    bil2.setspeed(2);
  }
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
}
