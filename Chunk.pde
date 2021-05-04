class Chunk {
  private int x;
  private int y;
  private int level;
  
  Chunk(int _x, int _y, int _level) {
    x = _x;
    y = _y;
    level = _level;
  }
  
  int getX() {
    return x;
  }
  
  int getY() {
    return y;
  }
  
  int getLevel() {
    return level;
  }
}
