Camera cam;
World world;
Settings settings;

void settings() {
  size(800, 800, P2D);
}

void setup() {
  settings = new Settings();
  world = new World((long)random(settings.randomRange), 0.1);
  cam = new Camera(0, 0, world);
  noStroke();
}

void draw() {
  background(0);
  cam.showArea();

  MAIN_DEBUG();
}
