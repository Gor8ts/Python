# К уже реализованному классу «Дробь» добавьте статический метод,
# который при вызове возвращает количество созданных объектов класса «Дробь».

class Drob():

    count_drob = 0

    @staticmethod    
    def sum_number(numerator,denominator):
        sum_number = numerator.__add__(denominator)
        Drob.count_drob += 1
        return sum_number
    
    @staticmethod
    def difference(numerator,denominator):
        Drob.count_drob += 1
        return numerator.__sub__(denominator)
    
    @staticmethod
    def multiplication (numerator,denominator):
        Drob.count_drob += 1
        return numerator.__mul__(denominator)

    @staticmethod
    def division(numerator,denominator):
        Drob.count_drob += 1
        return numerator.__truediv__(denominator)
    
    @staticmethod
    def get_count_drob():
        return Drob.count_drob
    

    

print (Drob.multiplication(2,4))
print (Drob.sum_number(5,5))
print (Drob.difference (5,5))
# print 
# print 
print (Drob.division(10,5))
print (Drob.get_count_drob())