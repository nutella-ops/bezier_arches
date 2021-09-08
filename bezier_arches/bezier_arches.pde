void setup(){
  size(1500,600);
  
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

  float x1 = random(height);
  float y1 = random(height);
  float x2 = random(height);
  float y2 = random(height);
  noFill();
  
  float mod = random(10,30);  
  for (int i = 0; i < random(2,37); i++){
      strokeWeight(random(0.05,1.3)*random(1,4));
      bezier(0, random(height), x1, y1, x2, y2, random(width), random(height)); 
      strokeWeight(random(0.05,1.3)*random(1,4));
      bezier(0, random(height), x1+mod, y1+mod, x2+mod, y2+mod, random(width), random(height));
      mod = mod+i;
 }
 save("bezier-arches_sept-8_.png");
}
