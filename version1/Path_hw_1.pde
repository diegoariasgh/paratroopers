boolean debug = false;
Path path;
Vehicle car1;
PImage bg;
PVector landing;

void setup() {
  size(600, 800);
  newPath();
  car1 = new Vehicle(new PVector(300, 0), 1, .9);
  bg = loadImage("background.jpg");
  landing = new PVector(280, 780);
}

void draw() {
  background(bg);

  //if (mousePressed == true) {
  //  println (mouseX +"," + mouseY);
  //}
  
  car1.run();
  car1.follow(path);

  if (!debug) {
  } else {
    path.display();
    car1.display();
  }
}

void newPath() { 
  path = new Path();  
  path.addPoint(255, 100);
  path.addPoint(70, 230);
  path.addPoint(50, 385);
  path.addPoint(185, 525);
  path.addPoint(280, 640);
  path.addPoint(280, 700);
}

public void keyPressed() {
  if (key == ' ') {
    debug = !debug;
    //pause=!pause;
  }
}