int diameter = 50;
int numLines = 10;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(0);
  noFill();
  for(int n = 0; n < numLines; n++) {
    float sinWave = sin(radians(frameCount+n*numLines));
    float cosWave = cos(radians(frameCount+n*numLines));
    
    float x1 = width/2 + (width/2 - diameter/2) * sinWave;
    float x2 = width/2 + (width/2 - diameter/2) * cosWave;
    float y1 = diameter;
    float y2 = height - diameter;
    
    stroke(255, 200);
    strokeWeight(5);
    circle(x1, y1, diameter);
    circle(x2, y2, diameter);
    
    stroke(255, 200);
    line(x1, y1+diameter/2, x2, y2-diameter/2);
  }
}
