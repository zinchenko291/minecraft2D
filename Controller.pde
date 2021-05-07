Boolean up = false, down = false, left = false, right = false, shift = false;

void keyPressed() {
  if (key == 'r') {
    world = new World((long)random(settings.randomRange), 0.1);
    cam = new Camera(0, 0, world);
  }

  if (key == 'w' || key == 'W') up = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'd' || key == 'D') right = true;
  if (keyCode == SHIFT) shift = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') up = false;
  if (key == 'a' || key == 'A') left = false;
  if (key == 's' || key == 'S') down = false;
  if (key == 'd' || key == 'D') right = false;
  if (keyCode == SHIFT) shift = false;
}

void move() {
  if (left) {
    cam.setX(cam.getX() - settings.cameraSpeed * (shift ? settings.cameraSprintCoefficient : 1)); // left
  }
  if (right) {
    cam.setX(cam.getX() + settings.cameraSpeed * (shift ? settings.cameraSprintCoefficient : 1)); // right
  }
  if (up) {
    cam.setY(cam.getY() - settings.cameraSpeed * (shift ? settings.cameraSprintCoefficient : 1)); // up
  }
  if (down) {
    cam.setY(cam.getY() + settings.cameraSpeed * (shift ? settings.cameraSprintCoefficient : 1)); // down
  }
}
