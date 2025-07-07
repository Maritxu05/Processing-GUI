GUIManager guiManager;
TextInput inputName;
Button goToFirst;
Button goToSecond;
CheckBoxList firstScreenOptions;
CheckBoxList secondScreenOptions;
CheckBoxList thirdScreenOptions;
Button goToThird; 
Button goToFourth;
CheckBoxWithImageList flowerOptions;
CheckBoxList fourthScreenOptions;
Button goToFinal;
int answer;
Label cheesecakeLabel;
Label chocolateLabel;
Label vanillaLabel;
Label cookiesLabel;
Label answerLabel;
Screen finalScreen;
void setup() {
  size(600, 600);
  guiManager = new GUIManager();

  Screen mainScreen = new Screen("Main", getPastelColor(PastelColor.PEACH));
  Screen firstScreen = new Screen("First", getPastelColor(PastelColor.SKY));
  Screen secondScreen = new Screen("Second", getPastelColor(PastelColor.LAVENDER));
  Screen thirdScreen = new Screen("Third", getPastelColor(PastelColor.LEMON));
  Screen fourthScreen = new Screen("Fourth", getPastelColor(PastelColor.MINT));
  finalScreen = new Screen("Final", getPastelColor(PastelColor.PEACH));

  goToFirst = new Button(450, 500, 100, 40, false, false, "Start!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToFirst.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("First");
      println("Button goToFirst was pressed");
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
       println("Button returnToMain was pressed");
    }
  };
  
  goToSecond = new Button(450, 500, 100, 40, false, false, "Continue!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToSecond.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Second");
       println("Button goToSecond was pressed");
    }
  };
  
  String Season = "What is the best season?";
  Label firstQuestion = new Label(30, 100, 540, 80, Season, 30, false, false, getPastelColor(PastelColor.BLACK));
  
  firstScreenOptions = new CheckBoxList(100,200, 20, 20, "", false, getPastelColor(PastelColor.BLACK), getPastelColor(PastelColor.WHITE));
  firstScreenOptions.addCheckbox("Winter");
  firstScreenOptions.addCheckbox("Summer");
  firstScreenOptions.addCheckbox("Spring");
  firstScreenOptions.addCheckbox("Autumn");
  
  Button returnToFirst = new Button(50, 500, 100, 40, true, true, "Go back!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  returnToFirst.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("First");
       println("Button returnToFirst was pressed");
    }
  };
  
  goToThird = new Button(450, 500, 100, 40, false, false, "Continue!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToThird.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Third");
       println("Button goToThird was pressed");
    }
  };
  
  String personality = "Choose the characteristics that apply to you";
  Label personalityQuestion = new Label(30, 100, 540, 80, personality, 30, false, false, getPastelColor(PastelColor.BLACK));
  
  secondScreenOptions = new CheckBoxList(100,200, 20, 20, "", true, getPastelColor(PastelColor.BLACK), getPastelColor(PastelColor.WHITE));
  secondScreenOptions.addCheckbox("Funny");
  secondScreenOptions.addCheckbox("Outgoing");
  secondScreenOptions.addCheckbox("Introvert");
  secondScreenOptions.addCheckbox("Smart");
  secondScreenOptions.addCheckbox("Nerdy");
  secondScreenOptions.addCheckbox("Beautiful");
  secondScreenOptions.addCheckbox("Fashionable");
  secondScreenOptions.addCheckbox("Interesting");
  
  Button returnToSecond = new Button(50, 500, 100, 40, true, true, "Go back!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  returnToSecond.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Second");
       println("Button returnToSecond was pressed/n");
    }
  };
  
  goToFourth = new Button(450, 500, 100, 40, false, false, "Continue!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToFourth.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Fourth");
       println("Button goToFourth was pressed");
    }
  };
  
  String pictrue = "Choose the flower that represents you the most";
  Label pictrueQuestion = new Label(30, 10, 540, 80, pictrue, 30, false, false, getPastelColor(PastelColor.BLACK));
  
  flowerOptions = new CheckBoxWithImageList(30, 80, false, getPastelColor(PastelColor.BLACK), getPastelColor(PastelColor.WHITE));
  flowerOptions.addItem("a", "flowerOne.jpg", "a");
  flowerOptions.addItem("b", "flowerTwo.jpg", "a");
  flowerOptions.addItem("c", "flowerThree.jpeg", "a");
  flowerOptions.addItem("d", "flowerFour.jpg", "a");
  
  Button returnToThird = new Button(50, 500, 100, 40, true, true, "Go back!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  returnToThird.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Third");
       println("Button returnToThird was pressed");
    }
  };
  
  goToFinal = new Button(450, 500, 100, 40, false, false, "Continue!",getPastelColor(PastelColor.BLACK) , getPastelColor(PastelColor.PINK));
  goToFinal.onClick = new ClickHandler() {
    public void onClick() {
      guiManager.setCurrentScreen("Final");
       println("Button goToFinal was pressed");
    }
  };
  
  String favourite = "What is your favourite ice-cream?";
  Label favouriteQuestion = new Label(30, 100, 540, 80, favourite, 30, false, false, getPastelColor(PastelColor.BLACK));
  
  fourthScreenOptions = new CheckBoxList(100,200, 20, 20, "", false, getPastelColor(PastelColor.BLACK), getPastelColor(PastelColor.WHITE));
  fourthScreenOptions.addCheckbox("Cheesecake");
  fourthScreenOptions.addCheckbox("Chocolate");
  fourthScreenOptions.addCheckbox("Vanilla");
  fourthScreenOptions.addCheckbox("Cookies and cream");


  String finale = "YOUR ICE CREAM FLAVOUR IS";
  Label finaleLabel = new Label(30, 30, 540, 80, finale, 40, false, false, getPastelColor(PastelColor.PINK) );
  
  String Cheesecake = "CHEESECAKE";
  cheesecakeLabel = new Label(30, 200, 540, 80, Cheesecake, 100, false, false, getPastelColor(PastelColor.SKY) );
  String Chocolate = "CHOCOLATE";
  chocolateLabel = new Label(30, 200, 540, 80, Chocolate, 100, false, false, getPastelColor(PastelColor.SKY) );
  String Vanilla = "VANILLA";
  vanillaLabel = new Label(30, 200, 540, 80, Vanilla, 100, false, false, getPastelColor(PastelColor.SKY) );
  String Cookies = "COOKIES AND CREAM";
  cookiesLabel = new Label(30, 200, 540, 80, Cookies, 100, false, false, getPastelColor(PastelColor.SKY) );
  
  mainScreen.addWidget("goToFirst", goToFirst);
  mainScreen.addWidget("FirstLabel", firstLabel);
  mainScreen.addWidget("WelcomeLabel", welcomeLabel);
  mainScreen.addWidget("NameLabel", nameLabel);
  mainScreen.addWidget("Input", inputName);
  
  firstScreen.addWidget("BackMain", returnToMain);
  firstScreen.addWidget("goToSecond", goToSecond);
  firstScreen.addWidget("firstQuestion", firstQuestion);
  firstScreen.addWidget("firstScreenOptions", firstScreenOptions);
  
  secondScreen.addWidget("returnToFirst", returnToFirst);
  secondScreen.addWidget("goToThird", goToThird);
  secondScreen.addWidget("personalityQuestion", personalityQuestion);
  secondScreen.addWidget("secondScreenOptions", secondScreenOptions);
  
  thirdScreen.addWidget("returnToSecond", returnToSecond);
  thirdScreen.addWidget("goToFourth", goToFourth);
  thirdScreen.addWidget("pictrueQuestion", pictrueQuestion);
  thirdScreen.addWidget("flowerOptions", flowerOptions);
  
  fourthScreen.addWidget("returnToThird", returnToThird);
  fourthScreen.addWidget("goToFinal", goToFinal);
  fourthScreen.addWidget("favouriteQuestion", favouriteQuestion);
  fourthScreen.addWidget("fourthScreenOptions", fourthScreenOptions);
  
  finalScreen.addWidget("finaleLabel", finaleLabel);
  if (answer == 0){
    answerLabel = cheesecakeLabel;
  }
  else if (answer == 1){
    answerLabel = chocolateLabel;
  }
  else if (answer == 2){
    answerLabel = vanillaLabel;
  }
  else{
    answerLabel = cookiesLabel;
  }
  finalScreen.addWidget("answerLabel", answerLabel);
  
  
  guiManager.addScreen("Main", mainScreen);
  guiManager.addScreen("First", firstScreen);
  guiManager.addScreen("Second", secondScreen);
  guiManager.addScreen("Third", thirdScreen);
  guiManager.addScreen("Fourth", fourthScreen);
  guiManager.addScreen("Final", finalScreen);
  
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
  if (guiManager.getCurrentScreen().title.equals("Second")) {
    boolean anyChecked = false;
    for (CheckBox cb : secondScreenOptions.checkBoxes) {  
      if (cb.isChecked()) {
        anyChecked = true;
        break; 
      }
    }
    goToThird.visible = anyChecked;
    goToThird.enabled = anyChecked;
  }
  if (guiManager.getCurrentScreen().title.equals("Third")) {
    boolean anyChecked = false;
    for (CheckboxWithImage cb : flowerOptions.items) {  
      if (cb.isChecked()) {
        anyChecked = true;
        break; 
      }
    }
    goToFourth.visible = anyChecked;
    goToFourth.enabled = anyChecked;
  }
  if (guiManager.getCurrentScreen().title.equals("Fourth")) {
    boolean anyChecked = false;
    for (CheckBox cb : fourthScreenOptions.checkBoxes) {  
      if (cb.isChecked()) {
        anyChecked = true;
        break; 
      }
    }
    goToFinal.visible = anyChecked;
    goToFinal.enabled = anyChecked;
  }
  if (guiManager.getCurrentScreen().title.equals("Fourth")) {
    for (int i=0; i<4; i++){
      CheckBox cb = fourthScreenOptions.checkBoxes.get(i);
      if (cb.isChecked()){
        answer =i;
      }
    }
  }
  if (guiManager.getCurrentScreen().title.equals("Final")) {
    if (answer == 0){
    answerLabel = cheesecakeLabel;
    }
    else if (answer == 1){
    answerLabel = chocolateLabel;
    }
    else if (answer == 2){
    answerLabel = vanillaLabel;
    }
    else{
    answerLabel = cookiesLabel;
    }  
    finalScreen.addWidget("answerLabel", answerLabel);
  }
  guiManager.display();
  guiManager.handleInput();
  
}