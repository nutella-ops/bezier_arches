import java.sql.Timestamp;
import java.text.SimpleDateFormat;

SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd--HH:mm:ss");
Timestamp timestamp = new Timestamp(System.currentTimeMillis());


  int coin;
  int toss(){
  float seed = random(0,2.1);
  if (seed <= 1){
    return coin = 0;
  } else {
    return coin = 1;
  }
  }

void setup(){

  size(1400,600);
  
  int handle;
    if (height >= width){
      handle = height;
    } else {
    handle = width;
    }
  

  
  float tolerance = random(6,8);
  float[] variation = {tolerance/100, tolerance/-100};
  
  int startX1 = 0;
  int endY1 = 0;
  
  int startX2 = width;
  int endY2 = 0;
  
  float x1 = random(handle);
  float y1 = random(handle);
  float x2 = random(handle);
  float y2 = random(handle);
  noFill();
  
  float mod = random(1,3); 
  float[] strokeList = {0.3, 0.7, 1.3};
  
   
  for (int i = 0; i < random(20,60); i++){
     

      //strokeWeight(strokeList[2]);
      //bezier(0, width/3-percent, x1+x1*variation[coin], y1+y1*variation[coin], x2+x2*variation[coin], y2+y2*variation[coin], width, height/3+percent); 
      //strokeWeight(strokeList[1]);
      //bezier(0, width/3-percent, x1+x1*variation[coin], y1+y1*variation[coin], x2+x2*variation[coin], y2+y2*variation[coin], width, height/3+percent);
      //mod = mod-i;
      
      strokeWeight(strokeList[0]);
      bezier(startX1, endY1, x1+x1*variation[toss()]-mod, y1+y1*variation[toss()]-mod, x2+x2*variation[toss()]-mod, y2+y2*variation[toss()]-mod, startX2, endY2);
      mod = mod+i;
      strokeWeight(strokeList[1]);
      bezier(startX1, endY1, x1+x1*variation[toss()]-mod, y1+y1*variation[toss()]-mod, x2+x2*variation[toss()]-mod, y2+y2*variation[toss()]-mod, startX2, endY2);
      mod = mod+i;
      strokeWeight(strokeList[2]);
      bezier(startX1, endY1, x1+x1*variation[toss()]-mod, y1+y1*variation[toss()]-mod, x2+x2*variation[toss()]-mod, y2+y2*variation[toss()]-mod, startX2, endY2);
      mod = mod+i;
 }
 save("bezier-arches_" + dateFormat.format(timestamp) +".png");
}
