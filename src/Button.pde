class Button extends Widget {
  ClickHandler onClick;
  Button(int x, int y, int w, int h, String text) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.visible = true;
    this.enabled = true;
    this.textColor = color(0);
    this.bgColor = color(200);
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
     if (!visible && !enabled){
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