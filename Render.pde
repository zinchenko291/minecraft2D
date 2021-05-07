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
      vertex(x * settings.chunkSize, y * settings.chunkSize, 0, 0);
      vertex((1 + x) * settings.chunkSize, y * settings.chunkSize, settings.chunkSize, 0);
      vertex((1 + x) * settings.chunkSize, (1 + y) * settings.chunkSize, settings.chunkSize, settings.chunkSize);
      vertex(x * settings.chunkSize, (1 + y) * settings.chunkSize, 0, settings.chunkSize);
    endShape();
  }
}
