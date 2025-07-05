class Label extends Widget {
  int labelTextSize;
  color textColor;
  boolean showBackground;
  boolean showBorder;

  Label(int x, int y, int w, int h, String text, int textSize,
        boolean background, boolean border, color textColor) {
    super(x, y, w, h, true, true, text, color(0), color(200));
    this.labelTextSize = textSize;
    this.showBackground = background;
    this.showBorder = border;
    this.textColor = textColor;
  }

  void display() {
    if (!visible) return;

    if (showBackground) {
      fill(bgColor);
      noStroke();
      rect(x, y, w, h);
    }

    if (showBorder) {
      noFill();
      stroke(0);
      rect(x, y, w, h);
    }

    fill(textColor);
    textAlign(CENTER, CENTER);
    textSize(labelTextSize);
    text(text, x + w/2, y + h/2);
  }

  void handleInput() {
    if (!visible || !enabled) return;
  }
}
