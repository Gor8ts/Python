# Создайте класс Число (или используйте уже ранее 
# созданный вами). Класс число хранит внутри одно значение. 
# Используя перегрузку операторов реализуйте для 
# него арифметические операции для работы с числом 
# (операции +, -, *, /).

class Number:

    count_drob = 0

    @staticmethod    
    def sum_number(number):
        sum_number = number.__add__(number)
        Number.count_drob += 1
        return sum_number
    
    @staticmethod
    def difference(number):
        Number.count_drob += 1
        return number.__sub__(number)
    
    @staticmethod
    def multiplication (number):
        Number.count_drob += 1
        return number.__mul__(number)

    @staticmethod
    def division(number):
        Number.count_drob += 1
        return number.__truediv__(number)
    
    @staticmethod
    def get_count_drob():
        return Number.count_drob
    

    

print (Number.multiplication(2))
print (Number.sum_number(5))
print (Number.difference (5))
# print 
# print 
print (Number.division(10))
print (Number.get_count_drob())