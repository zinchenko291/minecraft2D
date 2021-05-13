void MAIN_DEBUG() {
  if (settings.MAIN_DEBUG) {
    fill(0, 0, 200);
    text("Camera X: " + cam.getX(), 10, 10);
    text("Camera Y: " + cam.getY(), 10, 20);
    text("World X size:" + world.getXSize(), 10, 30);
    text("Scale: " + scale, 10, 40);
    text("FPS: " + (int)frameRate, 10, 50);
    ellipse(2, 2, sin(millis() * 0.001) * 10, sin(millis() * 0.001) * 10);
  }
}

void CHUNK_DEBUG(Chunk chunk) {
  if (settings.CHUNK_DEBUG) {
    fill(200, 0, 30);
    text(chunk.getX(), chunk.getX() * settings.chunkSize, chunk.getY() * settings.chunkSize + 10);
    text(chunk.getY(), chunk.getX() * settings.chunkSize, chunk.getY() * settings.chunkSize + 20);
    text(chunk.getHight(), chunk.getX() * settings.chunkSize, chunk.getY() * settings.chunkSize + 30);
  }
}
