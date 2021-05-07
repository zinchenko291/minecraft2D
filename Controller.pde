void keyPressed() {
  if (key == 'r') {
    world = new World((long)random(settings.randomRange), 0.1);
    cam = new Camera(0, 0, world);
  }
  if (key == 'a') {
    cam.setX(cam.getX() - settings.cameraSpeed);
  }
  if (key == 'd') {
    cam.setX(cam.getX() + settings.cameraSpeed);
  }
  if (key == 'w') {
    cam.setY(cam.getY() - settings.cameraSpeed);
  }
  if (key == 's') {
    cam.setY(cam.getY() + settings.cameraSpeed);
  }
}
