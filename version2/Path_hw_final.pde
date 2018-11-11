Path path;
Path path2;
Vehicle1 car1;
Vehicle1 car2;

PImage bg;
PVector landing;

void setup() {
  size(600, 800);
  newPath();
  newPath2();
  car1 = new Vehicle1(new PVector(300, 0), 1, .9);
  car2 = new Vehicle1(new PVector(200, 0), 1, .6);

  bg = loadImage("background.jpg");
  landing = new PVector(280, 780);
}

void draw() {
  background(bg);

  car1.run();
  car1.follow(path);

  car2.run();
  car2.follow(path2);
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

void newPath2() { 
  path2 = new Path();
  path2.addPoint(245, 90);
  path2.addPoint(300, 175);
  path2.addPoint(457, 246);
  path2.addPoint(480, 500);
  path2.addPoint(350, 600);  
  path2.addPoint(380, 650);
  path2.addPoint(380, 700);
}