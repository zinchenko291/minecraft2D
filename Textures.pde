class Textures {
  private PImage[] textures;
  private PImage[] shadows;
  private PImage noTexture;
  
  Textures() {
    this.textures = new PImage[] {
      loadImage("textures/water.png"),
      loadImage("textures/sand.png"),
      loadImage("textures/grass.png"),
      loadImage("textures/stone.png"),
      loadImage("textures/snow.png")
    };
    
    this.shadows = new PImage[] {
      loadImage("textures/shadows/shadowU.png"),
      loadImage("textures/shadows/shadowR.png"),
      loadImage("textures/shadows/shadowD.png"),
      loadImage("textures/shadows/shadowL.png"),
      loadImage("textures/shadows/shadowAngleU.png"),
      loadImage("textures/shadows/shadowAngleR.png"),
      loadImage("textures/shadows/shadowAngleD.png"),
      loadImage("textures/shadows/shadowAngleL.png")
    };
    
    noTexture = loadImage("textures/noTexture.png");
    
  }
  
  public PImage getTexture(int i) { return textures[i]; }
  public PImage getNoTexture() { return noTexture; }
  public PImage getShadow(int i) { return shadows[i]; }
  public int lengthTextures() { return textures.length; };
}
