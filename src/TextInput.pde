class TextInput extends Widget {
  String value ="";
  boolean isActive = false;
  boolean processedKey = false;
  TextInput(int x, int y, int w, int h, String text, color bgColor) {
   super(x, y, w, h, true, true, text, color(0), bgColor); 
  }
  
  void display (){
    if (!visible){
    return;
    }
    if (bgColor !=150 && bgColor != textColor)
    {
      fill(bgColor);
    }
    else
    {
      fill(255);
    }
    rect(x, y, w, h);
    
    fill (textColor);
    textAlign (LEFT, CENTER);
    if (value.isEmpty() && !isActive) {
      fill(150); 
      text(text, x + 10, y + h/2);
    } else {
      fill(textColor); 
      text(value, x + 10, y + h/2);
    }
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
     if (mousePressed) {
      isActive = mouseInWidget(mouseX, mouseY);
    }
    
    if (isActive && keyPressed && !processedKey){
      if (key == BACKSPACE && value.length() > 0) {
        value = value.substring(0, value.length() - 1);
      } 
      else if (key != CODED && key != ENTER && key != RETURN) {
        value += key;
      }
    }
      
  }
  
  boolean getText (){
    if (value.length() > 0) return true;
    return false;
  }
  
}