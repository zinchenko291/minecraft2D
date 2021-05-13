class Settings {
  public final int chunkSize = 32;
  public final int maxHight = new Textures().lengthTextures();
  
  // Camera
  public final float cameraSpeed = 0.1;
  public final int cameraSprintCoefficient = 2;
  
  // Render
  public final boolean renderShadows = true;
  
  // Seed range
  public final long seedRange = 100;
  
  // DEBUG
  public final boolean MAIN_DEBUG = false;
  public final boolean CHUNK_DEBUG = false;
  public final boolean SHADOW_DEBUG = false;
}
