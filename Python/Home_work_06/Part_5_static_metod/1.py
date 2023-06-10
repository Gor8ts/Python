# Создайте класс Circle (окружность). Для данного 
# класса реализуйте ряд перегруженных операторов:
# ■ Проверка на равенство радиусов двух окружностей 
# (операция = =);
# ■ Сравнения длин двух окружностей (операции >, <, 
# <=,>=);
# ■ Пропорциональное изменение размеров окружности, 
# путем изменения ее радиуса (операции + - += -=).

from math import pi

class Circle:
    def __init__(self,r) -> None:
        self.radius = r

    def __str__(self):
        return f"Circle with radius {self.radius}"

    def __eq__(self,other):
        if isinstance (other,Circle): 
            return self.radius == other.radius
        else:
            return False

    def __gt__(self, other):
        if isinstance(other, Circle):
            return self.radius > other.radius
        else:
            raise TypeError('Non-trim operand type for ">"')

    def __lt__(self, other):
        if isinstance(other, Circle):
            return self.radius < other.radius
        else:
            raise TypeError('Non-trim operand type for "<"')

    def __ge__(self, other):
        if isinstance(other, Circle):
            return self.radius >= other.radius
        else:
            raise TypeError('Non-trim operand type for ">="')

    def __le__(self, other):
        if isinstance(other, Circle):
            return self.radius <= other.radius
        else:
            raise TypeError('Non-trim operand type for "<="')

    def __add__(self,other):
        if isinstance(other, Circle):
            return Circle(self.radius + other.radius)
        elif isinstance(other, (int, float)):
            return Circle(self.radius + other)
        else:
            raise TypeError ('Non-trim operand type for "+"')
    
    def __sub__(self, other):
        if isinstance(other, Circle):
            return Circle(self.radius - other.radius)
        elif isinstance(other, (int, float)):
            return Circle(self.radius - other)
        else:
            raise TypeError ('Non-trim operand type for "-"')

    def __iadd__(self, other):
        if isinstance(other, Circle):
            self.radius += other.radius
        elif isinstance(other, (int, float)):
            self.radius += other
        else:
            raise TypeError ('Non-trim operand type for "+="')
        return self

    def __isub__(self, other):
        if isinstance(other, Circle):
            self.radius -= other.radius
        elif isinstance(other, (int, float)):
            self.radius -= other
        else:
            raise TypeError ('Non-trim operand type for "-="')
        return self
    

circl_1 = Circle(5)
circl_2 = Circle(8)
print (circl_1.__add__(circl_2))