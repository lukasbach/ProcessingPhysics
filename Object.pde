class Object {
  // Vector vMotion: Current motion of the object
  Vector vMotion = new Vector(0, 0);

  // Vector vGravity: Gravity vector, which affects this object
  Vector vGravity = new Vector(0, 1);

  // Vector vPosition: Current position of the object
  Vector vPosition = new Vector(0, 0);

  // Constructor #1: Spawn testobject with no parameters
  Object() {
    vPosition.set(width/2, height/2);
  }
  
  // Constructor #2: X Y coords
  Object(float x, float y) {
    vPosition.set(x, y);
  }
  
  // Constructor #3: X Y coords, motion vector
  Object(float x, float y, Vector motion) {
    vPosition.set(x, y);
    vMotion = motion;
  }

  void calcMovement() {
    vPosition.add(vMotion);
  }

  void calcGravity() {
    vMotion.add(vGravity);
  }


  void drawBall() {
    ellipse(vPosition.x, vPosition.y, 20, 20);
    /*strokeWeight(10);
     stroke(0);
     line(vPosition.x, vPosition.y, (vPosition.x + vMotion.x * 15), (vPosition.y + vMotion.y * 15));*/
  }

  void update() {
    calcMovement();
    calcGravity();
    drawBall();
  }
}
