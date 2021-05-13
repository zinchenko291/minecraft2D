class Render { //<>// //<>// //<>// //<>// //<>//
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

    CHUNK_DEBUG(chunk);
  }

  public void renderShadow(int x, int y) {
    if (!settings.renderShadows) return;
    Chunk[][] chunks = new Chunk[3][3];

    for (int i = 0; i < chunks.length; i++) {
      for (int j = 0; j < chunks[0].length; j++) {
        chunks[i][j] = world.getChunk(j - 1 + x, i - 1 + y);
      }
    }

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (chunks[i][j] != null && chunks[i][j].getHight() < chunks[1][1].getHight()) {
          PImage shadow = null;
          boolean angle = false;

          // | 00 01 02 |  | 4 0 5 |
          // | 10 -- 12 |  | 3 - 1 |
          // | 20 21 22 |  | 7 2 6 |

          if (i == 0 && j == 0) { 
            shadow = textures.getShadow(4); 
            angle = true;
          } else if (i == 0 && j == 1) { 
            shadow = textures.getShadow(0);
          } else if (i == 0 && j == 2) { 
            shadow = textures.getShadow(5); 
            angle = true;
          } else if (i == 1 && j == 0) { 
            shadow = textures.getShadow(3);
          } else if (i == 1 && j == 2) { 
            shadow = textures.getShadow(1);
          } else if (i == 2 && j == 0) { 
            shadow = textures.getShadow(7); 
            angle = true;
          } else if (i == 2 && j == 1) { 
            shadow = textures.getShadow(2);
          } else if (i == 2 && j == 2) { 
            shadow = textures.getShadow(6); 
            angle = true;
          } else { 
            shadow = textures.getNoTexture();
          }

          if (angle) {
            if (j == 0 && i == 0
              && (chunks[i][j].getHight() < chunks[0][1].getHight()
              || chunks[i][j].getHight() < chunks[1][0].getHight())) continue;
            else if (j == 2 && i == 0
              && (chunks[i][j].getHight() < chunks[0][1].getHight()
              || chunks[i][j].getHight() < chunks[1][2].getHight())) continue;
            else if (j == 0 && i == 2
              && (chunks[i][j].getHight() < chunks[1][0].getHight()
              || chunks[i][j].getHight() < chunks[2][1].getHight())) continue;
            else if (j == 2 && i == 2
              && (chunks[i][j].getHight() < chunks[2][1].getHight()
              || chunks[i][j].getHight() < chunks[1][2].getHight())) continue;
          }

          beginShape();
          if (mouseX > x * settings.chunkSize && mouseX < (x + 1) * settings.chunkSize
            && mouseY > y * settings.chunkSize && mouseY < (y + 1) * settings.chunkSize
            && settings.SHADOW_DEBUG)
          {
            fill(100, 50, 150);
          } else {
            texture(shadow);
          }
          vertex((j - 1 + x) * settings.chunkSize, (i - 1 + y) * settings.chunkSize, 0, 0);
          vertex((j + x) * settings.chunkSize, (i - 1 + y) * settings.chunkSize, settings.chunkSize, 0);
          vertex((j + x) * settings.chunkSize, (i + y) * settings.chunkSize, settings.chunkSize, settings.chunkSize);
          vertex((j - 1 + x)* settings.chunkSize, (i + y) * settings.chunkSize, 0, settings.chunkSize);
          endShape();
        }
      }
    }
  }
}
