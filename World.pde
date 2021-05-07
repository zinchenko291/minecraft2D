class World {
  private ArrayList<ArrayList<Chunk>> chunks;
  private Generator gen;

  World(long seed, float noiseScale) {
    this.gen = new Generator(seed, noiseScale);
    this.chunks = new ArrayList<ArrayList<Chunk>>();
  }

  public void setChunk(Chunk chunk, int x, int y) {
    try {
      chunks.get(x).add(y, chunk);
    } 
    catch(IndexOutOfBoundsException e) {
      chunks.add(x, new ArrayList<Chunk>());
      chunks.get(x).add(y, chunk); //<>//
    }
  }

  public Chunk getChunk(int x, int y) {
    try {
      chunks.get(x).get(y);
    } 
    catch(IndexOutOfBoundsException e) {  //<>//
      Chunk newChunk = gen.generateChunk(x, y);
      setChunk(newChunk, x, y);
    }
    return chunks.get(x).get(y);
  }
  
  public int getXSize() { return chunks.size(); }
}
