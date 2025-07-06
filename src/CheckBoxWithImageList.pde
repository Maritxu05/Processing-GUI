
class CheckBoxWithImageList extends Widget {
  ArrayList<CheckboxWithImage> items;
  int spacing = 100; 
  boolean multiple;
  color checkedColor, uncheckedColor;

  CheckBoxWithImageList(int x, int y, boolean multiple, color checkedColor, color uncheckedColor) {
    super(x, y, 0, 0, true, true, "", color(0), color(255));
    items = new ArrayList<CheckboxWithImage>();
    this.multiple = multiple;
    this.checkedColor = checkedColor;
    this.uncheckedColor = uncheckedColor;
  }

  void addItem(String checkboxText, String imagePath, String imageLabel) {
    int yOffset = y + items.size() * spacing;
    CheckboxWithImage cbImg = new CheckboxWithImage(
      x, yOffset, 150, 100,
      checkboxText, imagePath, imageLabel,
      multiple,
      checkedColor,
      uncheckedColor
    );
    items.add(cbImg);
  }

  void display() {
    if (!visible) return;
    for (CheckboxWithImage item : items) {
      item.display();
    }
  }

  void handleInput() {
    if (!visible || !enabled) return;
    
    for (int i = 0; i < items.size(); i++) {
      CheckboxWithImage item = items.get(i);
      
      if (mousePressed && (item.checkbox.mouseInWidget(mouseX, mouseY) || item.img.mouseInWidget(mouseX, mouseY))) {
        if (!multiple) {
          // For single selection, uncheck all others
          for (CheckboxWithImage other : items) {
            other.checkbox.checked = false;
          }
        }
        item.checkbox.toggle();
        delay(150);
        break; // Only handle one item per click
      }
    }
  }

  ArrayList<Integer> getCheckedIndices() {
    ArrayList<Integer> checkedIndices = new ArrayList<>();
    for (int i = 0; i < items.size(); i++) {
      if (items.get(i).isChecked()) {
        checkedIndices.add(i);
      }
    }
    return checkedIndices;
  }

  void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
    for (int i = 0; i < items.size(); i++) {
      items.get(i).setPosition(x, y + i * spacing);
    }
  }
}