Boolean up = false, down = false, left = false, right = false, shift = false;
float scale = 1;

void keyPressed() {
  if (key == 'r') {
    world = new World((long)random(settings.seedRange), 0.1);
    cam = new Camera(0, 0, world);
  }

  if (key == 'w' || key == 'W' || key == 'ц' || key == 'Ц') up = true;
  if (key == 'a' || key == 'A' || key == 'ф' || key == 'Ф') left = true;
  if (key == 's' || key == 'S' || key == 'ы' || key == 'Ы') down = true;
  if (key == 'd' || key == 'D' || key == 'в' || key == 'В') right = true;
  if (keyCode == SHIFT) shift = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W' || key == 'ц' || key == 'Ц') up = false;
  if (key == 'a' || key == 'A' || key == 'ф' || key == 'Ф') left = false;
  if (key == 's' || key == 'S' || key == 'ы' || key == 'Ы') down = false;
  if (key == 'd' || key == 'D' || key == 'в' || key == 'В') right = false;
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

void mouseWheel(MouseEvent e) {
  scale -= e.getCount() * 0.1;
  scale = scale <= 0 ? 0.1 : scale;
  scale = scale >= 5 ? 5 : scale;
}
