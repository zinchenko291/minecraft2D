class Textures {
  private PImage[] textures;
  private PImage noTexture;
  
  Textures() {
    this.textures = new PImage[] {
      loadImage("textures/water.png"),
      loadImage("textures/sand.png"),
      loadImage("textures/grass.png"),
      loadImage("textures/stone.png"),
      loadImage("textures/snow.png")
    };
    
    noTexture = loadImage("textures/noTexture.png");
    
  }
  
  public PImage getTexture(int i) { return textures[i]; }
  public PImage getNoTexture() { return noTexture; }
  public int lengthTextures() { return textures.length; };
}
