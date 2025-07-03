class Screen {
  
  String title;
  int bgColor;
  HashMap<String, Widget> widgets;
  
  Screen (String title, int bgColor, HashMap<String, Widget> widgets){
    this.title = title;
    this.bgColor = bgColor;
    this.widgets = widgets;
  }
  
  void addWidget (String name, Widget widget){
    if (!this.widgets.containsKey(name)){
      this.widgets.put(name, widget);
    }
  }
  
  Widget getWidget(String name){
    if (this.widgets.containsKey(name)){
      return this.widgets.get(name);
    }
    else{
      println("A widget named '" + name + "' could not be found!");
      return null;
    }
  }
  
  void setBackgroundColor (int bgColor){
    this.bgColor = bgColor;
  }
  
  void setTitle (String title){
    this.title = title;
  }
  
  void display (){
    background(bgColor);
    
    for (Widget widget : widgets){
      if(widget.visible()){
        widget.display();
      }
    }
  }

  void handleInput(){
    for (Widget widget : widgets){
      if (widget.visible()){
        widget.handleInput();
      }
    }
  }
}