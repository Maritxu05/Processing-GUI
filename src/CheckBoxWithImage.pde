class CheckboxWithImage extends Widget {
  CheckBox checkbox;
  Image img;
  int padding = 10; 
  
  CheckboxWithImage(int x, int y, int w, int h, String checkboxText, String imagePath, String imageLabel,
                   boolean multiple, color checkedColor, color uncheckedColor) {
    super(x, y, w, h, true, true, "", color(0), color(255));  
    
    
    checkbox = new CheckBox(x, y, 20, 20, checkboxText, checkedColor, uncheckedColor);
    checkbox.roundShape = !multiple; 
    
   
    img = new Image(x + 20 + padding, y, w - 20 - padding, h, imageLabel, imagePath);
  }
  
  void display() {
    if (!visible) return;
    checkbox.display();
    img.display();
  }

  void handleInput() {
    if (!visible || !enabled) return;
    
   
    if (mousePressed && (checkbox.mouseInWidget(mouseX, mouseY) || img.mouseInWidget(mouseX, mouseY))) {
      checkbox.toggle();
      delay(150);
    }
  }

  boolean isChecked() {
    return checkbox.isChecked();
  }

  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
    checkbox.setPosition(x, y);
    img.setPosition(x + 20 + padding, y);
  }
}