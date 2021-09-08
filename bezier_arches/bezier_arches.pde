void setup(){
  size(500,1100);
  
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
  
  for (int i = 0; i < random(50); i++){
  bezier(x1, y1, random(width), random(width), random(width), random(width), x2, y2);
 }
 save("bezier-arches_sept-8_.png");
}
