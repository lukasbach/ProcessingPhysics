Object obj;

void setup() {
  size(600, 600);
  obj = new Object();
}

void draw() {
  // Redraw background
  background(255);
  
  // Update ball
  obj.update();
}
