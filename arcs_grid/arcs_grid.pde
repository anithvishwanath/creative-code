color bg = #0000ff;
color fg = #ffffff;

void setup() {
  size(1000, 1000);
  pixelDensity(2);
}

void draw() {
  background(bg);
  fill(fg);
  noStroke();

  float numTilesX = 4;
  float numTilesY = numTilesX;

  float tileWidth = width / numTilesX;
  float tileHeight = height / numTilesY;

  for (int x = 0; x < numTilesX; x++) {
    for (int y = 0; y < numTilesY; y++) {
      float tilePosX = tileWidth * x;
      float tilePosY = tileHeight * y;
      
      float wave = sin(radians(frameCount + x * 10 + y * 10));
      float mappedWave = map(wave, -1, 1, 0, 5);
      
      int selectTile = int(mappedWave);

      push();
      translate(tilePosX, tilePosY);
      if (selectTile == 0) {
        arc(0, 0, tileWidth * 2, tileHeight * 2, radians(0), radians(90));
      } else if (selectTile == 1) {
        arc(tileWidth, 0, tileWidth * 2, tileHeight * 2, radians(90), radians(180));
      } else if (selectTile == 2) {
        arc(tileWidth, tileHeight, tileWidth * 2, tileHeight * 2, radians(180), radians(270));
      } else if (selectTile == 3) {
        arc(0, tileHeight, tileWidth * 2, tileHeight * 2, radians(270), radians(360));
      } else {
        rect(0, 0, tileWidth, tileHeight);
      }
      pop();
    }
  }
}
