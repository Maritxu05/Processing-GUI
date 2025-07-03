GUIManager guiManager;

void setup() {
  size(600, 400);
  guiManager = new GUIManager();

  Screen mainScreen = new Screen("Main", 127);
  Screen otherScreen = new Screen("Other", 255);

  Button btn = new Button(50, 50, 100, 40, "Go to Other");
  btn.onClick = new ClickHandler() {
    public void onClick() {
      println("Attempting to switch to other screen");
      guiManager.setCurrentScreen("Other");
    }
  };

  Button other = new Button(50,100, 100, 40, "Go to Main");
  other.onClick = new ClickHandler() {
    public void onClick() {
      println("Attempting to switch to main screen");
      guiManager.setCurrentScreen("Main");
    }
  };

  mainScreen.addWidget("myButton", btn);
  otherScreen.addWidget("otherButton", other);

  guiManager.addScreen("Main", mainScreen);
  guiManager.addScreen("Other", otherScreen);

  guiManager.setCurrentScreen("Main");
}

void draw() {
  background(255);
  guiManager.display();
  guiManager.handleInput();
}