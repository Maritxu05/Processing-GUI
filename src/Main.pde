GUIManager guiManager;
TextInput inputName;
Button goToFirst;
Button goToSecond;
CheckBoxList firstScreenOptions;
void setup() {
  size(600, 600);
  guiManager = new GUIManager();

  Screen mainScreen = new Screen("Main", getPastelColor(PastelColor.PEACH));
  Screen firstScreen = new Screen("First", getPastelColor(PastelColor.SKY));
  Screen secondScreen = new Screen("Second", getPastelColor(PastelColor.LAVENDER));
  Screen thirdScreen = new Screen("Third", getPastelColor(PastelColor.LEMON));
  Screen fourthScreen = new Screen("Fourth", getPastelColor(PastelColor.MINT));
  Screen finalScreen = new Screen("Final", getPastelColor(PastelColor.PEACH));

  goToFirst = new Button(450, 500, 100, 40, false, false, "Start!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToFirst.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("First");
    }
  };
  String welcome = "WELCOME";
  Label firstLabel = new Label(30, 30, 540, 80, welcome, 40, false, false, getPastelColor(PastelColor.PINK) );
  
  String txt = "If you are anything like me you\n have to love ice cream!\n  If you wanna discover what ice cream\n flavour you are, you are in the right place!";
  Label welcomeLabel = new Label(30, 120, 540, 80, txt, 20, false, false, getPastelColor(PastelColor.BLACK));

  String name = "Please input your name in the box to start the text";
  Label nameLabel = new Label(30, 200, 540, 80, name, 20, false, false, getPastelColor(PastelColor.BLACK));
  
  inputName = new TextInput(200, 300, 220, 50, "Input your name please", getPastelColor(PastelColor.PINK) );
  
  Button returnToMain = new Button(50, 500, 100, 40, true, true, "Go back!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  returnToMain.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Main");
    }
  };
  
  goToSecond = new Button(450, 500, 100, 40, false, false, "Continue!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToSecond.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Second");
    }
  };
  
  String Season = "What is the best season?";
  Label firstQuestion = new Label(30, 100, 540, 80, Season, 30, false, false, getPastelColor(PastelColor.BLACK));
  
  firstScreenOptions = new CheckBoxList(100,200, 20, 20, "", false, getPastelColor(PastelColor.BLACK), getPastelColor(PastelColor.WHITE));
  firstScreenOptions.addCheckbox("Winter");
  firstScreenOptions.addCheckbox("Summer");
  firstScreenOptions.addCheckbox("Spring");
  firstScreenOptions.addCheckbox("Autumn");

  mainScreen.addWidget("goToFirst", goToFirst);
  mainScreen.addWidget("FirstLabel", firstLabel);
  mainScreen.addWidget("WelcomeLabel", welcomeLabel);
  mainScreen.addWidget("NameLabel", nameLabel);
  mainScreen.addWidget("Input", inputName);
  
  firstScreen.addWidget("BackMain", returnToMain);
  firstScreen.addWidget("goToSecond", goToSecond);
  firstScreen.addWidget("firstQuestion", firstQuestion);
  firstScreen.addWidget("firstScreenOptions", firstScreenOptions);

  guiManager.addScreen("Main", mainScreen);
  guiManager.addScreen("First", firstScreen);
  guiManager.addScreen("Second", secondScreen);

  guiManager.setCurrentScreen("Main");
}

void draw() {
  background(255);
  if (guiManager.getCurrentScreen().title.equals("Main")) {
    if (inputName.getText()){
      goToFirst.visible = true;
      goToFirst.enabled = true;
    }
  }
  if (guiManager.getCurrentScreen().title.equals("First")) {
    boolean anyChecked = false;
    for (CheckBox cb : firstScreenOptions.checkBoxes) {  
      if (cb.isChecked()) {
        anyChecked = true;
        break; 
      }
    }
    goToSecond.visible = anyChecked;
    goToSecond.enabled = anyChecked;
  }
  guiManager.display();
  guiManager.handleInput();
  
}