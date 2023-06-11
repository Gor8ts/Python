# Создайте базовый класс Shape для рисования плоских 
# фигур. 
# Определите методы: 
# ■ Show() — вывод на экран информации о фигуре;
# ■ Save() — сохранение фигуры в файл;
# ■ Load() — считывание фигуры из файла.
# Определите производные классы: 
# ■ Square — квадрат, который характеризуется координатами левого верхнего угла и длиной стороны;
# ■ Rectangle — прямоугольник с заданными координатами верхнего левого угла и размерами;
# ■ Circle — окружность с заданными координатами центра и радиусом;
# ■ Ellipse — эллипс с заданными координатами верхнего 
# угла описанного вокруг него прямоугольника со сторонами, параллельными осям координат, и размерами 
# этого прямоугольника.
# Создайте список фигур, сохраните фигуры в файл, 
# загрузите в другой список и отобразите информацию о 
# каждой из фигур.

class Shape:

    def __init__(self) -> None:
        self.x = 0
        self.y = 0

    def show(self):
        print (f'Coordinates x = {self.x}, y = {self.y}')

    def save(self):
        pass

    def load (self):
        pass

class Square(Shape):
    def __init__(self, x, y, lenght) -> None:
        super().__init__()
        self.x = x
        self.y = y
        self.lenght = lenght

    def show(self):
        super().show()
        print (f'side length = {self.lenght}')

class Rectangle(Shape):
    def __init__(self, x, y, width, height) -> None:
        super().__init__()
        self.x = x
        self.y = y
        self.width = width
        self. height = height

    def show(self):
        super().show()
        print (f'width = {self.width}, height = {self.height}')

class Circle(Shape):
    def __init__(self, x, y, r) -> None:
        super().__init__()
        self.x = x
        self.y = y
        self.radius = r

    def show(self):
        super().show()
        print (f'radius = {self.radius}')

class Ellipse(Shape):
    def __init__(self, x, y, width, height) -> None:
        super().__init__()
        self.x = x
        self.y = y
        self.width = width
        self.height = height

    def show(self):
        super().show()
        print (f'width = {self.width}, height = {self.height}')