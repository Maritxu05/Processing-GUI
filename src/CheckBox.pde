class CheckBox extends Widget {
   boolean checked = false;
    color checkedColor = color(0, 150, 255); // Blue when checked
  color uncheckedColor = color(200);       // Light gray when unchecked
  CheckBox(int x, int y, int w, int h, String text) {
   super(x, y, w, h, true, true, text, color(0), color(200)); 
  }
  
  void display (){
    if (!visible){
    return;
    }
    bgColor = checked ? checkedColor : uncheckedColor;
    fill(bgColor);
    rect(x, y, h, h);
    
    
    fill (textColor);
    textAlign (CENTER, CENTER);
    text(text, x + w/2, y + h/2);
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
      if (mousePressed && mouseInWidget(mouseX, mouseY)) {
     toggle();
    }
  }
  
  void toggle(){
    checked = !checked;
  }
  
  boolean isChecked(){
    if(checked) return true;
    else return false;
  }
  
}