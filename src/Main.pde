GUIManager guiManager;

void setup() {
  size(600, 600);
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
  
 
  CheckBoxList a = new CheckBoxList (100,200, 100, 40, "Check Boxes");
  a.addCheckbox("one");
  a.addCheckbox("two");
  a.addCheckbox("three");
  
  Image image = new Image (200,200, 100, 150, "duck", "duckk.jpg");
  
  Label label = new Label (300,200, 100, 40, "This label");
  
  TextInput input = new TextInput (450,200, 100, 40, "Write here!");

  mainScreen.addWidget("myButton", btn);
  otherScreen.addWidget("otherButton", other);
  otherScreen.addWidget("checklist", a);
  otherScreen.addWidget("image", image);
  otherScreen.addWidget("label", label);
  otherScreen.addWidget("input", input);

  guiManager.addScreen("Main", mainScreen);
  guiManager.addScreen("Other", otherScreen);

  guiManager.setCurrentScreen("Main");
}

void draw() {
  background(255);
  guiManager.display();
  guiManager.handleInput();
}