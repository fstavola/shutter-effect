import processing.video.*;
Capture myCapture;
int a=300;//50; //stepsize x
int b=1; //stepsize y
int x=0;
int y=0;
//int xres = 480;
//int yres = 360;
//int xres = 640;
//int yres = 480;
int xres = 640;
int yres = 480;
int s = second();

void settings() {
  size((2*xres+10) , yres);
}

void setup(){
//myCapture = new Capture(this, xres, yres, 25);
//myCapture = new Capture(this);
myCapture = new Capture(this, "pipeline:autovideosrc");
myCapture.start();
}

void captureEvent(Capture myCapture) {
 myCapture.read();
}

void draw(){
image(myCapture, 0, 0);

loadPixels();

   if(true){
       
      int dx = xres+10+x;
      int dy =y;
          copy(x,y, a, b, dx,dy, a, b);
          line(x,y, xres, y);
           x+=a;
           if(x>xres){
             x=0;
             y+=b;
          }
          if(y>=yres) {
            y=0;
  //          saveFrame("####.jpeg");
         }      
    }
  }
