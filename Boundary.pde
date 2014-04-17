class Boundary {
  Vector vStart = new Vector(0, 0);
  Vector vEnd = new Vector(0, 0);
  
  Boundary(Vector vStart, Vector vEnd) {
    vStart = vStart;
    vEnd = vEnd;
    boundaries.add(this);
  }
}
