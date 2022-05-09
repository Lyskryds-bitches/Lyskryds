class Bil {
  int speed;
  float xpos;
  float ypos;
  //konstruktør
  Bil(int speed, float xpos, float ypos) {
    this.speed=speed;
    this.xpos=xpos;
    this.ypos=ypos;
  }
  int getspeed() {
    return this.speed;
  }
  void setspeed(int speed) {
    this.speed=speed;
  }
  float getxpos() {
    return this.xpos;
  }
  void setxpos(float xpos) {
    this.xpos=xpos;
  }
  float getypos() {
    return this.ypos;
  }
  void setypos(float ypos) {
    this.ypos=ypos;
  }
  void displayBilhv() {
    pushMatrix();
    translate(xpos*speed, 8*52);
    fill(255);
    rect(0, 0, 32, 16);
    popMatrix();
  }
  void displayBilvv() {
    pushMatrix();
    translate(xpos*speed, 8*48);
    fill(255);
    rect(800, 0, 32, 16);
    popMatrix();
  }
   void displayBilln() {
    pushMatrix();
    translate(8*48,ypos*speed);
    fill(255);
    rect(0, 0, 16, 32);
    popMatrix(); 
}
void displayBillo() {
    pushMatrix();
    translate(8*52,ypos*speed);
    fill(255);
    rect(0, 800, 16, 32);
    popMatrix(); 
}
}
