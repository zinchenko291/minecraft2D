class Render {
  private Textures textures;
  private World world;
  
  Render(World world) {
    this.textures = new Textures();
    this.world = world;
  }
  
  public void renderChunk(int x, int y) {
    Chunk chunk = world.getChunk(x, y);
    
    beginShape();
      texture(textures.getTexture(chunk.getHight()));
      vertex(x * Settings.chunkSize, y * Settings.chunkSize, 0, 0);
      vertex((1 + x) * Settings.chunkSize, y * Settings.chunkSize, Settings.chunkSize, 0);
      vertex((1 + x) * Settings.chunkSize, (1 + y) * Settings.chunkSize, Settings.chunkSize, Settings.chunkSize);
      vertex(x * Settings.chunkSize, (1 + y) * Settings.chunkSize, 0, Settings.chunkSize);
    endShape();
  }
}
