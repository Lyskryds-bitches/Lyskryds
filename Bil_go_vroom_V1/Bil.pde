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
void displayBil(){
  pushMatrix();
  translate(displayWidth/200*xpos, displayHeight/100*52);
  fill(0);
  rect(0, 0, displayWidth/50, displayHeight/50);  // Black rectangle
  popMatrix();
 //xpos=xpos+speed;
}
}
