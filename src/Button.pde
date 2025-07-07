class Button extends Widget {
  ClickHandler onClick;
  int textSize = 20;
  Button(int x, int y, int w, int h, boolean visible, boolean enabled,
  String text, color textColor,  color bgColor) {
    super(x, y, w, h, visible, enabled, text, textColor, bgColor); 
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
    textSize(textSize);
    text(text, x + w/2, y + h/2);
  }
  
  void handleInput(){
     if (!visible || !enabled){
       return;
     }
     if ( mousePressed && mouseInWidget(mouseX, mouseY)){
       doOnClick();
      
     }
     
  }
  
  void doOnClick(){
    if (onClick !=null){
      onClick.onClick();
    }
  }
  
}