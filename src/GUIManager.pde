class GUIManager{
  HashMap<String, Screen> screens;
  Screen currentScreen;
  boolean isHandlingInput = false;
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
      println (screenName + " is the new screen");
    }
    else {
    println("Screen not found: " + screenName);
  }
  }
  
  Screen getCurrentScreen (){
    return currentScreen;
  }
  
  void display(){
    if (currentScreen != null) {
      currentScreen.display();
    }
  }
  
  void handleInput () {
    if (currentScreen != null && !isHandlingInput) {
    isHandlingInput = true;
    currentScreen.handleInput();
    isHandlingInput = false;
    }
  }
  

}