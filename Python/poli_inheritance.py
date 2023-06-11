import math


class Circle:
    def __init__(self,r) -> None:
        self.r = r
    
    def len(self):
        return 2*math.pi*self.r


class Square:
    def __init__(self,a) -> None:
        self.a = a
    def len(self):
        return 4*self.a

class CircleInSquare(Circle, Square):
    def __init__(self,r,a) -> None:
        if (r < a/2):
            Circle.__init__(self,r)
            Square.__init__(self,a)
        else:
            del(self)

    def len(self):
        return Circle.len(self)+ Square.len(self)

item = CircleInSquare(40,6)
print(item)
print(item.len())
item2 = Circle(4)
print(CircleInSquare.len(item2))