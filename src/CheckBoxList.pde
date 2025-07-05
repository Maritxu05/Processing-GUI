class CheckBoxList extends Widget {
  ArrayList<CheckBox> checkBoxes;
  int spacing = 30;
  boolean multiple;
  color checkedColor;
  color uncheckedColor;  
  int padding = 5;
  
  CheckBoxList(int x, int y, int w, int h, String title, boolean multiple, color checkedColor, color uncheckedColor) {
    super(x, y, w, h, true, true, title, color(0), color(255)); 
    checkBoxes = new ArrayList<CheckBox>();
    this.multiple = multiple;
    this.checkedColor = checkedColor;
    this.uncheckedColor = uncheckedColor;
  }
  
  void display() {
    if (!visible) return;
    
    // Draw title if exists
    if (text != null && !text.equals("")) {
      fill(textColor);
      textAlign(LEFT, CENTER);
      text(text, x, y - spacing/2);
    }
    
    for (CheckBox checkbox : checkBoxes) {
      checkbox.display();
    }
  }
  
  void handleInput() {
    if (!visible || !enabled) return;
    
    if (mousePressed) {
      for (int i = 0; i < checkBoxes.size(); i++) {
        CheckBox checkbox = checkBoxes.get(i);
        if (checkbox.mouseInWidget(mouseX, mouseY)) {
          if (!multiple) {
            for (CheckBox cb : checkBoxes) {
              cb.checked = false;
            }
          }
          checkbox.toggle();
          delay(100); 
          break; 
        }
      }
    }
  }
  
  void addCheckbox(String label) {
    int yOffset = y + checkBoxes.size() * spacing;
    CheckBox cb = new CheckBox(x, yOffset, w, spacing - padding, label, checkedColor, uncheckedColor);
    cb.roundShape = !multiple;
    checkBoxes.add(cb);
  }
  
  CheckBox getCheckbox(int index) {
    if (index >= 0 && index < checkBoxes.size()) {
      return checkBoxes.get(index);
    }
    return null;
  }
  
  ArrayList<Integer> getCheckedIndices() {
    ArrayList<Integer> checkedIndices = new ArrayList<Integer>();
    for (int i = 0; i < checkBoxes.size(); i++) {
      if (checkBoxes.get(i).isChecked()) {
        checkedIndices.add(i);
      }
    }
    return checkedIndices;
  }
  
  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
    for (int i = 0; i < checkBoxes.size(); i++) {
      checkBoxes.get(i).setPosition(x, y + i * spacing);
    }
  }
  
  void setSize(int w, int h) {
    this.w = w;
    this.h = h;
    for (CheckBox cb : checkBoxes) {
      cb.setSize(w, spacing - padding);
    }
  }
}