void setup(){
  size(500,500);
  if (height >= width){
    int handle = height;
  } else {
    int handle = width;
  }

  float x1 = random(width);
  float y1 = height;
  
  float x2 = random(width);
  float y2 = height;
  noFill();
  
  for (int i = 0; i < random(50); i++){
  bezier(x1, y1, random(height), random(height), random(height), random(height), x2, y2);
 }
}
