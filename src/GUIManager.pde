void setup() {
  size(400, 400);
}

void draw() {
  background(255);
}

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
      currentScreen = name;
    }
  }
  
  void setCurrentScreen (Screen S){
    if (screens.containsKey(name)) {
      currentScreen = name;
    }
  }
  
  void display(){
    if (currentScreen != null){
      screens.get(currentScreen).display();
    }
  }
  
  void handleMouse(int x, int y, boolean pressed){
    if (currentScreen != null) {
      screens.get(currentScreen).handleMouse();
    }
  }
  
  void handleInput (char key, int keyCode, boolean pressed) {
     if (currentScreenName != null) {
      screens.get(currentScreen).handleInput();
    }
  }
  

}