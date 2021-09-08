void setup(){
  size(1100,500);
  
  String project = "bezier-arches";
  int m = month();  // Values from 1 - 12
  int d = day();    // Values from 1 - 31
  int y = year();
  
  String mm = String.valueOf(m);
  String dd = String.valueOf(d);
  String yy = String.valueOf(y);

  
  int handle;
    if (height >= width){
      handle = height;
    } else {
    handle = width;
    }

  float x1 = random(width);
  float y1 = height;
  
  float x2 = random(width);
  float y2 = height;
  noFill();
  
  for (int i = 0; i < random(150); i++){
  bezier(0, height, random(width), random(width), random(width), random(width), width, height);
 }
 save("bezier-arches_sept-8_.png");
}
