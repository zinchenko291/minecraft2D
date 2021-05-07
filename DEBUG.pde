void MAIN_DEBUG() {
  if (settings.MAIN_DEBUG) {
    fill(0, 0, 200);
    text(cam.getX(), 10, 10);
    text(cam.getY(), 10, 20);
    text(world.getXSize(), 10, 30);


    ellipse(settings.chunkSize, settings.chunkSize, sin(millis() * 0.001) * 10, sin(millis() * 0.001) * 10);
  }
}

void CHUNK_DEBUG(int x, int y) {
  if (settings.CHUNK_DEBUG) {
    fill(200, 0, 30);
    text(x, x * settings.chunkSize, y * settings.chunkSize + 10);
    text(y, x * settings.chunkSize, y * settings.chunkSize + 20);
  }
}
