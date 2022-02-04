int i = 600;
void setup(){
  size(1000,1000);
}
void draw(){
  background(0);
  serpinski(0,1000,1000);
}
void serpinski(int x, int y, int len){
  if(len <= i){
       triangle(x, y, x + len, y, x+len/2, y-len);
   }
   else{
 
     serpinski(x+len/2, y, len/2);
     serpinski(x+len/4, y-len/2, len/2);
     serpinski(x,y,len/2);
   }
}
void mousePressed(){
  if(i > 0){
    i-=20;
    fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  }
}
