class Camera {
  private int x;
  private int y;

  Camera(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void setX(int x) { this.x = x; }
  public void setY(int y) { this.y = y; }

  public PVector getXY() {
    return new PVector(x, y);
  }
}
