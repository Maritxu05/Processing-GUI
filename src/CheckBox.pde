class CheckBox extends Widget {
  boolean checked = false;
  color checkedColor;
  color uncheckedColor;       
  boolean roundShape = false;
  int textOffset = 10; 
  
  CheckBox(int x, int y, int w, int h, String text, color checkedColor, color uncheckedColor) {
    super(x, y, w, h, true, true, text, color(0), uncheckedColor); 
    this.checkedColor = checkedColor;
    this.uncheckedColor = uncheckedColor;
  }
  
  void display() {
    if (!visible) return;
    
    bgColor = checked ? checkedColor : uncheckedColor;
    fill(bgColor);
    
    if (roundShape) {
      ellipseMode(CORNER);
      ellipse(x, y, h, h);  
    } else {
      rect(x, y, h, h);     
    }
    
    fill(textColor);
    textAlign(LEFT, CENTER);
    text(text, x + h + textOffset, y + h/2);
  }
  
  void handleInput() {
    if (!visible || !enabled) return;
    
    if (mousePressed && mouseInWidget(mouseX, mouseY)) {
      toggle();
      delay(100); 
    }
  }
  
  boolean mouseInWidget(int mx, int my) {
   return mx >= x && mx <= x + h && my >= y && my <= y + h;
  }
  
  void toggle() {
    checked = !checked;
  }
  
  boolean isChecked() {
    return checked;
  }
  
  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
  }
}