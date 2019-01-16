int i = 0;
float[] data;
void setup() {
  size(600, 400);
  data = new float[width];
  for (int i=0; i<width; i++) {
    data[i] = random(height);
  }
}

void draw() {
  background(0);
  stroke(255);
  for (int i=0; i < data.length; i++) {
    line(i, height, i, height - data[i]);
  }
  selectionSort(data);
}

void selectionSort(float arr[]) 
{  

  if (i < arr.length-1) { 
    int minIndex = i; 
    for (int j = i+1; j < arr.length-1; j++) {
      if (arr[j] < arr[minIndex]) 
        minIndex = j; 
    }
  
    float temp = arr[minIndex]; 
    arr[minIndex] = arr[i]; 
    arr[i] = temp;
    i++;
  }else{
   noLoop(); 
  }
} 
