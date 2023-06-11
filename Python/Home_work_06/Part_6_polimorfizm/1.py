# Создать базовый класс Фигура с методом для подсчета 
# площади. Создать производные классы: прямоугольник, 
# круг, прямоугольный треугольник, трапеция со своими 
# методами для подсчета площади.

from math import pi
class Figure:
    def __init__(self,a,h) -> None:
        self.side_a = a
        self.height = h

    def square(self):
        S = self.side_a * self.height
        return S
    
class Rectangle(Figure):

    def __init__(self, a, b) -> None:
        super().__init__(a)
        self.side_b = b

    def square(self):
        S = self.side_a * self.side_b
        return S
    
class Circle(Figure):
    def __init__(self, r) -> None:
        self.radius = r

    def square(self):
        S = pi * self.radius * self.radius
        return S
    
class Right_triangle(Figure):
    def __init__(self, a, h) -> None:
        super().__init__(a, h)

    def square(self):
        return super().square()/2
    
class Trapezoid(Figure):
    def __init__(self, a, h, b) -> None:
        super().__init__(a, h)
        self.side_b = b

    def square(self):
        return self.side_a * self.side_b/2 * self.height
        

s = Right_triangle(2,4)
print (s.square())
t = Trapezoid(4,8,6)
print (t.square())