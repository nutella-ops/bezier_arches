void setup(){
  size(1100,600);
  
  String project = "bezier-arches";
  int s = second();
    
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
  float percent = width*(random(5,20)/100);
  
  for (int i = 0; i < random(35,45); i++){
      strokeWeight(strokeList[2]);
      bezier(0, width/3-percent, x1, y1, x2, y2, width, height/3+percent); 
      strokeWeight(strokeList[1]);
      bezier(0, width/3-percent, x1+mod, y1+mod, x2+mod, y2+mod, width, height/3+percent);
      mod = mod-i;
      
      strokeWeight(strokeList[0]);
      bezier(0, width+percent, x1+mod, y1+mod, x2+mod, y2+mod, width, height/3+height/3-percent);
      mod = mod+i;
      strokeWeight(strokeList[1]);
      bezier(0, width+percent, x1+mod, y1+mod, x2+mod, y2+mod, width, width/3+width/3-percent);
      mod = mod+i;
      strokeWeight(strokeList[2]);
      bezier(0, width/3+percent, x1+mod, y1+mod, x2+mod, y2+mod, width, width/3+width/3-percent);
      mod = mod+i;
 }
 save("bezier-arches_sept-8_.png");
}
