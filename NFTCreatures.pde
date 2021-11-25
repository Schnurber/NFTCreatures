Creature[] c;
color[] colors;
int nCreatures;
int nImages;
int n;
void setup() {
  size(600, 600);
  init();
  nCreatures = 80;
  nImages = 100;
  c=new Creature[nCreatures];
  for (int i=0; i<nCreatures; i++) {
    c[i]=new Creature(random(width), random(height));
  }
  colors = getCols(nCreatures * nImages);
  n=0;
}
void init() {
  rectMode(CENTER);
  smooth();
  //noStroke();
}

void draw() {
  init();
  boolean saving = true;
  strokeWeight(0.5);
  background(0);
  for (int i=0; i < nCreatures; i++) {
    if (n < nImages * nCreatures) {
      c[i].draw(colors[n++]);
    }
  }
  saving = n % nCreatures == 0 && n < nImages * nCreatures;

  if (saving) {
    saveFrame("tokens/NFTCreature######.jpg");
  } else {
   // background(255);
  }
}
