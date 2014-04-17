class Vector {
  float x, y;

  // Constructor #1: Define with x=0 and y=0
  Vector() {
    set(0, 0);
  }

  // Constructor #2: Define with X and Y values
  Vector(float newX, float newY) {
    set(newX, newY);
  }
  
  // Constructor #3: Clone existing vector
  Vector(Vector v) {
    set(v.x, v.y);
  }

  // Function to define x and y values
  void set(float newX, float newY) {
    x = newX;
    y = newY;
  }

  // Add given vectors values
  void add(Vector v) {
    x += v.x;
    y += v.y;
  }

  // Subtract vector from this one
  void subtract(Vector v) {
    x -= v.x;
    y -= v.y;
  }
  
  // Multiply with float
  void multiply(float i) {
    x *= i;
    y *= i;
  }

  // Get total length between starting point and end point
  float getDistance() {
    return sqrt( x*x + y*y );
  }
}
