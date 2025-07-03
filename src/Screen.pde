class Screen {
  String title;
  int bgColor;
  HashMap<String, Widget> widgets;
  
  Screen(String title, int bgColor) {
    this.title = title;
    this.bgColor = bgColor;
    this.widgets = (widgets != null) ? widgets : new HashMap<String, Widget>();
  }
  
  void addWidget(String name, Widget widget) {
    if (name != null && widget != null) {  
      widgets.put(name, widget);
    }
  }
  
  Widget getWidget(String name) {
    if (name != null && widgets.containsKey(name)) {
      return widgets.get(name);
    }
    return null;
  }
  
  void setBackgroundColor(int bgColor) {
    this.bgColor = bgColor;
  }
  
  void setTitle(String title) {
    this.title = title;
  }
  
  void display() {
    background(bgColor);
    for (Widget widget : widgets.values()) {
      if (widget.visible) {  
        widget.display();
      }
    }
  }

  void handleInput() {
    for (Widget widget : widgets.values()) {
      if (widget.visible && widget.enabled) { 
        widget.handleInput();
      }
    }
  }
}