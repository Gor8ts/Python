# Создайте класс для подсчета площади геометрических 
# фигур. Класс должен предоставлять функциональность 
# для подсчета площади треугольника по разным формулам, 
# площади прямоугольника, площади квадрата, площади 
# ромба. Методы класса для подсчета площади должны 
# быть реализованы с помощью статических методов. Также 
# класс должен считать количество подсчетов площади и 
# возвращать это значение с помощью статического метода.
from math import sin
class Calculation():

    count_calculation = 0
    @staticmethod
    def area_of_triangle(b,h):
        S = (1/2)*b*h
        Calculation.count_calculation += 1
        return S
    
    @staticmethod
    def area_of_triangle_2(b,h,y):
        S = (1/2)*b*h*sin(y)
        Calculation.count_calculation += 1
        return S
    
    @staticmethod
    def area_of_a_rectangle(a,b):
        S = a * b
        Calculation.count_calculation += 1
        return S
    
    @staticmethod
    def square_area(a):
        S = a * a
        Calculation.count_calculation += 1
        return S
    
    @staticmethod
    def area_of_a_rhombus(d1,d2):
        S = (d1*d2)/2
        Calculation.count_calculation += 1
        return S
    
    @staticmethod
    def get_info_count():
        return Calculation.count_calculation
    

print(Calculation.area_of_a_rectangle(23,15))
print(Calculation.area_of_a_rhombus(16,10))
print(Calculation.get_info_count())