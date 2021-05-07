class Camera {
  private int x;
  private int y;
  private Render render;

  Camera(int x, int y, World world) {
    this.x = x;
    this.y = y;
    this.render = new Render(world);
  }
  
  public void setX(int x) { this.x = x; }
  public void setY(int y) { this.y = y; }

  public int getX() { return x; }
  public int getY() { return y; }
  
  public void showArea() {
    for (int i = 0; i < width / settings.chunkSize + 1; i++) {
      for (int j = 0; j < height / settings.chunkSize + 1; j++) {
        render.renderChunk(i + x, j + y);
      }
    }
  }
}
