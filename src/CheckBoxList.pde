class CheckBoxList extends CheckBox {
  ArrayList <CheckBox> checkBoxes;
  int spacing = 30;
  CheckBoxList(int x, int y, int w, int h, String text) {
   super(x, y, w, h, text); 
   checkBoxes = new  ArrayList <CheckBox>();
  }
  
  void display (){
    if (!visible){
    return;
    }
    for (CheckBox checkbox : checkBoxes){
      checkbox.display();
    }
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
      for (CheckBox checkbox : checkBoxes){
      checkbox.handleInput();
    }
  }
  
  void addCheckbox(String label) {
    int yOffset = y + checkBoxes.size() * spacing;
    CheckBox cb = new CheckBox(x, yOffset, w, spacing, label);
    checkBoxes.add(cb);
  }
  
  CheckBox getCheckbox(int index) {
    if (index >=0 && index <checkBoxes.size()){
      return checkBoxes.get(index);
    }
    else{
      return null;
    }
  }
  
  ArrayList<Integer> getCheckedIndices() {
     ArrayList<Integer> checkedIndices =  new ArrayList<Integer>();
      for (int i = 0; i < checkBoxes.size(); i++) {
       if(checkBoxes.get(i).isChecked()){
         checkedIndices.add(i);
       }
     }
     return checkedIndices;
  }
  
  void setPosition (int x, int y){
    this.x =x;
    this.y = y;
    for (int i=0; i<checkBoxes.size(); i++){
      checkBoxes.get(i).setPosition(x, y + i * spacing);
    }
  }
  
  void setSize(int w, int h) {
    this.w = w;
    this.h = h;
    for (CheckBox cb : checkBoxes) {
      cb.setSize(w, spacing);  // each checkbox gets same width and spacing height
    }
  }
}