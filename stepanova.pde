// All Examples Written by Casey Reas and Ben Fry

// unless otherwise stated.


boolean odd=true,finished=false;
float startx;
void setup(){
size(1000, 400);
startx = width*2+100;
draw_background(startx);
}

void draw(){
  if(startx>width){
    startx-=30;
    draw_background(startx,0);
    }else{
      if(!finished){
        draw_background(90,0);
        finished=true;
      }
    }

}

void draw_background(x,y){
  odd=true;
  background(255,247,190);
  int i = y-height;
  int a = x;
  while(i<height*2){
    if(odd){
      j = a-35-width;
    }else{
      j=a-width;
    }
    while(j<width*2){
      noStroke();
      fill(234,113,42);
      ellipse(j,i,60,60);
      j+=70;
    }
    if(odd){
      i+=50;
      odd=false;
    }else{
      i+=50;
      odd=true;
    }
  }
  i=-25;
  odd=false;
  while(i<width+25){
    if(odd){
      j=-10;
      }else{
      j=-60;  
      }
      while(j<height+25){
        stroke(255);
        strokeWeight(4);
        fill(122,185,190,160);
        triangle(i,j,i+60,j+88,i+120,j);
        j+=100;
      }
      if(odd){
      i+=105;
      odd=false;
    }else{
      i+=105;
      odd=true;
    }
    } 
}


void mouseMoved() {
  if(finished==true){
    draw_background(mouseX,mouseY);
  }
}