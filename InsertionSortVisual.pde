float[] data;
int i = 1;

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
  
  insertionSort(data);
}

void insertionSort(float arr[]) 
{ 
  if(i < arr.length){
    float key = arr[i]; 
    int j = i-1; 

    while (j>=0 && arr[j] > key) 
    { 
      arr[j+1] = arr[j]; 
      j = j-1;
    } 
    arr[j+1] = key;
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
