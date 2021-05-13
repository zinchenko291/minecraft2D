class Camera {
  private float x;
  private float y;
  private Render render;
  
  private int w, h;

  Camera(int x, int y, World world) {
    this.x = x;
    this.y = y;
    this.render = new Render(world);
  }

  public void setX(float x) {
    if (x < 0) {
      return;
    }
    this.x = x;
    
  }
  public void setY(float y) { 
     if (y < 0) {
      return;
    }
    this.y = y;
  }

  public float getX() { return x; }
  public float getY() { return y; }

  public void showArea() {
    w = width / settings.chunkSize + 10;
    h = height / settings.chunkSize + 10;
    
    w /= scale;
    h /= scale;
    push();
    scale(scale);
      translate(-x * settings.chunkSize, -y * settings.chunkSize);
      for (int i = 0; i < w; i++) {
        for (int j = 0; j < h; j++) {
          render.renderChunk(i + (int)x, j + (int)y);
        }
      }
      for (int i = 0; i < w; i++) {
        for (int j = 0; j < h; j++) {
          render.renderShadow(i + (int)x, j + (int)y);
        }
      }
    pop();
  }
  
  public void showChunk(int x, int y) {
    render.renderChunk(x, y);
    render.renderShadow(x, y);
  }
}
