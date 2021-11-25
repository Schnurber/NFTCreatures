color[] getCols(int anz) {

  int[] icolors = new int[anz];
  int step = 0xffffff / anz;
  int col = step;
  for (int u=0; u<anz; u++) {
    icolors[u]=color(col);
    col += step;
  }
  shuffle(icolors);
  color[] colors = new color[anz];
  for (int u=0; u<anz; u++) {
    colors[u]=color( icolors[u] | 0xff << 24);
  }
  return colors;
}

void shuffle(int[] numbers) {
  float l = numbers.length;
  for (int i=0; i<l; i++) {
    int other = (int) random(l);
    //Switch positioms i and l
    int a = numbers[i];
    numbers[i] = numbers[other];
    numbers[other] = a;
  }
}
