import toga

def on_press(widget):
  print("Hola Mundo")
  
def new_button():
  button = toga.Button("Hola Mundo", on_press=on_press)
  button.style.padding = 20
  button.style.font_size = 14
  
  return button

def build(app):
  box = toga.Box()
  
  button1 = new_button()
  box.add(button1)
  
  return box

def main():
  app = toga.App("Hola Mundo", "dev.netov.toga", startup=build)
  return app

if __name__ == '__main__':
  app = main()
  app.main_loop()