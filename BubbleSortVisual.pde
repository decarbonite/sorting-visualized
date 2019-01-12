float[] data;
int i=0;

void setup() {
  //fullScreen();
  size(600, 400);
  data = new float[width];
  for (int i=0; i < data.length; i++) {
    data[i] = random(height);
  }
}

void draw() {
  background(0);
  stroke(255);
  for (int i=0; i < data.length; i++) {
    line(i, height, i, height - data[i]);
  }
  bubbleSort(data);
}

void bubbleSort(float[] data) {
  if (i < data.length-1) {
    for (int j=0; j < data.length-i-1; j++) {
      if (data[j] > data[j+1]) {
        swap(j, (j+1));
      }
    }
    i++;
  } else {
    noLoop();
  }
}

void swap(int i, int j) {
  float temp = data[i];
  data[i] = data[j];
  data[j] = temp;
}
