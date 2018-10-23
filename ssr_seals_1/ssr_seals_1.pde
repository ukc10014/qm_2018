/*Preloader for website to 
/* @pjs preload="./ssr_seals_1/backg_carpet_ssr_2.png"; */

PImage img;  // Declare a variable of type PImage
int show_img = 0; //Sketch only starts drawing when this is 1
int first_flag = 0;//Flag for first pass through
/*
interface JavaScript {
  fill(0,0,0);
  text("I'm here in interface",0,0);
  int checkFlag();
}

void bindJavascript(JavaScript js) {
  println("bind javascript");
  javascript = js;
}

JavaScript javascript;
*/

void setup() {
  size(2560,1600);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("./ssr_seals_1/backg_carpet_ssr_2.png");
//  img = loadImage("backg_carpet_ssr_2.png");
  
  colorMode(HSB,100,100,100,100);
  

}



void draw() {
  //set_flag();
  if(show_img == 1) {
    /*Only display if the show_img flag has been set from webpage*/
  if(first_flag == 0) {
    background(0);
    // Draw the image to the screen at coordinate (0,0)
    image(img,0,0);
    first_flag=1;
  }
  
  fill(200,100,30,int(random(0,100)));
  rect(int(random(0,img.width)),int(random(0,img.height)),int(random(1,img.width)),int(random(1,10)));
  } 
}

void set_flag(int f) {
   show_img = f;
  }