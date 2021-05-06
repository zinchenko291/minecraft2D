class Textures {
  private PImage[] textures;
  Textures() {
    this.textures = new PImage[] {
      loadImage("textures/water.png"),
      loadImage("textures/sand.png"),
      loadImage("textures/grass.png"),
      loadImage("textures/stone.png"),
      loadImage("textures/snow.png")
    };
  }
  
  public PImage getTexture(int i){
    return textures[i];
  }
}
