void setup(){
  size(600,1100);
  
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
  float confine = random(1,3);
  float[] strokeList = {1, 2, 3};
  
  for (int i = 0; i < random(44,66); i++){
      strokeWeight(strokeList[2]);
      bezier(0, 0, x1, y1, x2, y2, width, 0); 
      strokeWeight(strokeList[1]);
      bezier(0, 0, x1+mod, y1+mod, x2+mod, y2+mod, width, 0);
      mod = mod-i;
      
      strokeWeight(strokeList[0]);
      bezier(0, width, x1+mod, y1+mod, x2+mod, y2+mod, width/2, height);
      mod = mod+i;
      strokeWeight(strokeList[1]);
      bezier(0, width, x1+mod, y1+mod, x2+mod, y2+mod, width/2, height);
      mod = mod+i;
      strokeWeight(strokeList[2]);
      bezier(0, width, x1+mod, y1+mod, x2+mod, y2+mod, width/2, height);
      mod = mod+i;
 }
 save("bezier-arches_sept-8_.png");
}
