class Image extends Widget {
  PImage image;
  String file;
  Image(int x, int y, int w, int h, String text, String file) {
   super(x, y, w, h, true, true, text, color(0), color(200)); 
   this.file = file;
   image = loadImage(file);
  }
  
  void display (){
    if (!visible){
    return;
    }
    if (image != null) {
      image(image, x, y, w, h);
    }
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
  }
  
}