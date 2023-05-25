# Создайте класс для подсчета максимума из четырех аргументов, минимума из четырех аргументов, 
# среднеарифметического из четырех аргументов, факториала аргумента. 
# Функциональность необходимо реализовать в виде статических методов.




class Calculations():

    count =0

    @staticmethod
    def max_arg(a,b,c,d):
        Calculations.count += 1
        return max(a,b,c,d)

    @staticmethod
    def min_arg(a,b,c,d):
        Calculations.count += 1
        return min(a,b,c,d)

    @staticmethod
    def arithmetic_mean(a,b,c,d):
        arithmetic = (a+b+c+d)/4
        Calculations.count += 1
        return arithmetic

    @staticmethod
    def factorial(i):
        fac = 1
        for n in range(1,i+1):
            fac *= n 
        Calculations.count += 1
        return fac

    @staticmethod
    def get_count():
        return Calculations.count


print(Calculations.max_arg(1,2,3,4))
print(Calculations.min_arg(1,2,3,4))
print(Calculations.arithmetic_mean(2,2,2,2))
print(Calculations.factorial(5))
print(Calculations.get_count())