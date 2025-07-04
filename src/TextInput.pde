class TextInput extends Widget {
  String value ="";
  boolean isActive = false;
  boolean processedKey = false;
  TextInput(int x, int y, int w, int h, String text) {
   super(x, y, w, h, true, true, text, color(0), color(200)); 
  }
  
  void display (){
    if (!visible){
    return;
    }
    fill(bgColor);
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
        processedKey = true;
      } 
      else if (key != CODED && key != ENTER && key != RETURN) {
        value += key;
        processedKey = true;
      }
    }
    if (!keyPressed){
        processedKey = false;
      }
      
  }
  
}