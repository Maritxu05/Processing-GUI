class Button extends Widget {
  ClickHandler onClick;
  Button(int x, int y, int w, int h, String text) {
   super(x, y, w, h, true, true, text, color(0), color(200)); 
    this.onClick = null; 
  }
  
  void display (){
    if (!visible){
    return;
    }
    fill(bgColor);
    rect(x, y, w, h);
    
    fill (textColor);
    textAlign (CENTER, CENTER);
    text(text, x + w/2, y + h/2);
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
      if (mousePressed && mouseInWidget(mouseX, mouseY)) {
      doOnClick();
    }
  }
  
  void doOnClick(){
    if (onClick !=null){
      onClick.onClick();
    }
  }
  
}