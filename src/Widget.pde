abstract class Widget{
  int x;
  int y;
  int w;
  int h;
  boolean visible;
  boolean enabled;
  String text;
  int textColor;
  int bgColor;
  
  Widget(int x, int y, int w, int h, boolean visible, boolean enabled,
  String text, int textColor,  int bgColor){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.visible = visible;
    this.enabled = enabled;
    this.text = text;
    this.textColor = textColor;
    this.bgColor = bgColor;
  }
  
  abstract void display();
  
  abstract void handleInput();
  
  void setText(String text){
    this.text = text;
  }
  
  void setTextColor (int textColor){
    this.textColor = textColor;
  }
  
  void setBackgroundColor (int bgColor){
    this.bgColor = bgColor;
  }
  
  void setPosition (int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void setSize (int w, int h){
    this.w = w;
    this.h = h;
  }
  
  void setVisible (boolean v){
    visible = v;
  }
  
  void setEnabled (boolean e){
    enabled = e;
  }
  
  boolean mouseInWidget (int px, int py){
   return (px >= x) && (px <= x + w) && (py >= y) && (py <= y + h);
  }
}