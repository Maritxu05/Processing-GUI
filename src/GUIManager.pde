class GUIManager{
  HashMap<String, Screen> screens;
  Screen currentScreen;
  
  GUIManager(){
    screens = new HashMap<String, Screen>();
    currentScreen = null;
  }
  
   void addScreen(String name, Screen screen) {
    
     if(!screens.containsKey(name)){
      screens.put(name, screen);
    }
    if (currentScreen == null){
      currentScreen = screen;
    }
  }
  
  void setCurrentScreen (String screenName){
    if (screens.containsKey(screenName)) {
      currentScreen = screens.get(screenName);
    }
    else {
    println("Screen not found: " + screenName);
  }
  }
  
  void display(){
    if (currentScreen != null) {
      currentScreen.display();
    }
  }
  
  void handleInput () {
    if (currentScreen != null) {
      currentScreen.handleInput();
    }
  }
  

}