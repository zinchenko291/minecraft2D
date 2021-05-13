Camera cam;
World world;
Settings settings;

void settings() {
  size(800, 800, P2D);
  PJOGL.setIcon("textures/icon.png");
  noSmooth();
}

void setup() {
  settings = new Settings();
  world = new World((long)random(settings.seedRange), 0.1);
  cam = new Camera(0, 0, world);
  surface.setTitle("Minecraft 2D");
  noStroke();
}

void draw() {
  background(0);
  cam.showArea();
  move();

  MAIN_DEBUG();
}
