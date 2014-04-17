static int w = 600;
static int h = 600;

Object obj;

ArrayList<Boundary> boundaries;

void setup() {
  size(w, h);
  
  // Define class elements
  obj = new Object();

  // Define lists
  boundaries = new ArrayList<Boundary>();

  // Define default boundaries
  new Boundary( new Vector ( 0 , 0 ) , new Vector ( w , 0 ) ); // top
  new Boundary( new Vector ( w , 0 ) , new Vector ( w , h ) ); // right
  new Boundary( new Vector ( 0 , h ) , new Vector ( w , h ) ); // bottom
  new Boundary( new Vector ( 0 , 0 ) , new Vector ( 0 , h ) ); // left
  
  
  // fps
  frameRate(60);
}

void draw() {
  // Redraw background
  background(255);
  
  // Update ball
  obj.update();
}
