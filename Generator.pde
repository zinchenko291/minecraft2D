class Generator {
  private long seed;
  private float noiseScale;
  private int maxHight;
  
  Generator(long seed, float noiseScale) {
    this.seed = seed;
    this.noiseScale = noiseScale;
  }
  
  public Chunk generateChunk(int x, int y) {
    noiseSeed(seed);
    
    int hight = (int)map(noise(x, y) * (1 / noiseScale), 0, 1, 0, maxHight);
    return new Chunk(x, y, hight);
  }
}
