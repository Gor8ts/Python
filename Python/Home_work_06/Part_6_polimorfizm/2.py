# Для классов из задания 1 нужно переопределить магические методы int(возвращает площадь)
# и str (возвращает информацию о фигуре).

from math import pi
class Figure:
    def __init__(self,a,h) -> None:
        self.side_a = a
        self.height = h

    def __int__ (self):
        S = self.side_a * self.height
        return S
    
    def __str__(self):
        return f'side a = {self.side_a}, height h = {self.height}'
    
class Rectangle(Figure):

    def __init__(self, a, b) -> None:
        super().__init__(a)
        self.side_b = b

    def __int__ (self):
        S = self.side_a * self.side_b
        return S
    
    def __str__(self):
        return f'side a = {self.side_a}, side b = {self.side_b}'
    
class Circle(Figure):
    def __init__(self, r) -> None:
        self.radius = r

    def __int__ (self):
        S = pi * self.radius * self.radius
        return S
    
    def __str__(self):
        return f'radius = {self.radius}'
    
class Right_triangle(Figure):
    def __init__(self, a, h) -> None:
        super().__init__(a, h)

    def __int__ (self):
        return super().__int__()/2
    
    def __str__(self):
        return f'side a = {self.side_a}, height h = {self.height}'
    
class Trapezoid(Figure):
    def __init__(self, a, h, b) -> None:
        super().__init__(a, h)
        self.side_b = b

    def __int__ (self):
        return self.side_a * self.side_b/2 * self.height
    
    def __str__(self):
        return f'side a = {self.side_a}, side b = {self.side_b}, height h = {self.height}'
        

s = Right_triangle(2,4)
print (s.__int__())
t = Trapezoid(4,8,6)
print (t.__int__())