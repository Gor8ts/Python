# Создайте класс «Дробь». Необходимо хранить в полях 
# класса: числитель и знаменатель. Реализуйте методы класса 
# для ввода данных, вывода данных, реализуйте доступ к 
# отдельным полям через методы класса. Также создайте 
# методы класса для выполнения арифметических операций 
# (сложение, вычитание, умножение, деление, и т.д.)

class Drob:

    def __init__(self,numerator, denominator) -> None:
        self.nunumerator = numerator
        self.denominator = denominator

    def put_numerator(self,n):
        self.nunumerator = n
    def put_denominator (self,d):
        self.denominator = d

    def sum_number(self,numerator,denominator):
        return sum (numerator,denominator)
    
    def difference(self,numerator,denominator):
        return numerator - denominator
    
    def multiplication (numerator,denominator):
        return numerator * denominator

    def division(numerator,denominator):
        return numerator / denominator
    

print(Drob.multiplication(2,4))