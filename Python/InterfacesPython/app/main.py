import toga
from consts import *

class PokeDex(toga.App):
    def __init__(self, title, id):
        toga.App.__init__(self, title, id)

        self.title = title
        self.size = (WIDTH, HEIGHT)

        self.heading = ['Name']
        self.data = [ 'Python', 'Ruby', 'Laravel', 'Sql' ]

        self.create_elements()

    def startup(self):
        self.main_window = toga.MainWindow('main', title=self.title, size=self.size)

        box = toga.Box()

        ##Agregar tabla al contenedor
        #box.add(self.table)

        # Dividir ventana
        split = toga.SplitContainer()
        split.content = [self.table, box]

        self.main_window.content = split
        self.main_window.show()

    def create_elements(self):
        self.create_table()

    def create_table(self):
        self.table = toga.Table(self.heading, data=self.data, on_select=self.select_element)

    #callbacks
    def select_element(self, widget, row):
        if row:
            print(row.name)


if __name__ == '__main__':
    pokedex = PokeDex('PokeDex', 'dev.netov.PokeDex')
    pokedex.main_loop()