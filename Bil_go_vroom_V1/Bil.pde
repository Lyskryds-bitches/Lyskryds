class Bil {

  int id;
  PVector location;
  PVector velocity;
  int r = (int)random(256);
  int g = (int)random(256);
  int b = (int)random(256);

  //konstruktør
  Bil(int speed, float xpos, float ypos, int id) {
    velocity = new PVector(speed, 0);
    location = new PVector(xpos, ypos);
    this.id=id;
  }
  float getspeed() {
    return velocity.x;
  }
  void setspeed(float speed) {
    this.velocity.x=constrain(speed, 0, 5);// tvinger værdien til at være mellem 1 og 5
  }
  float getxpos() {
    return this.location.x;
  }
  void setxpos(float xpos) {
    this.location.x=xpos;
  }
  float getypos() {
    return this.location.y;
  }
  void setypos(float ypos) {
    this.location.y=ypos;
  }
  void displayBil() {
    fill(r, b, g);
    rect(location.x, location.y, 32, 16);
  }
  
  void move() {
    this.location = this.location.add(this.velocity);
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }

  void checkCollision(Bil other) {
    //https://processing.org/examples/circlecollision.html

    float minDistance = 60.0f;
    // Get distances between the balls components
    PVector distanceVect = PVector.sub(other.location, location);

    // Calculate magnitude of the vector separating the balls
    float distanceVectMag = distanceVect.mag();
    

    if (distanceVectMag < minDistance && this.location.x < other.location.x) {
      this.setspeed(0);
      //println(id+" Stopper "+distanceVectMag+" "+minDistance+" "+this.velocity);
    }
    else if (distanceVectMag > minDistance && this.location.x > other.location.x) {
      this.setspeed(this.getspeed()+1);
      //println(id+" Gi gas "+distanceVectMag+" "+getspeed());
    }
    
    
  }
}
