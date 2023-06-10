# Создайте класс Complex (комплексное число). Более 
# подробно ознакомиться с комплексными числами можно 
# по ссылке.
# Создайте перегруженные операторы для реализации 
# арифметических операций для по работе с комплексными 
# числами (операции +, -, *, /).

class Complex:
    def __init__(self, real, imag):
        self.real = real
        self.imag = imag

    def __str__(self):
        if self.imag >= 0:
            return f"{self.real} + {self.imag}i"
        else:
            return f"{self.real} - {-self.imag}i"

    def __add__(self, other):
        if isinstance(other, Complex):
            real = self.real + other.real
            imag = self.imag + other.imag
            return Complex(real, imag)
        else:
            raise TypeError('Non-trim operand type for "+"')

    def __sub__(self, other):
        if isinstance(other, Complex):
            real = self.real - other.real
            imag = self.imag - other.imag
            return Complex(real, imag)
        else:
            raise TypeError('Non-trim operand type for "-"')

    def __mul__(self, other):
        if isinstance(other, Complex):
            real = self.real * other.real - self.imag * other.imag
            imag = self.real * other.imag + self.imag * other.real
            return Complex(real, imag)
        else:
            raise TypeError('Non-trim operand type for "*"')

    def __truediv__(self, other):
        if isinstance(other, Complex):
            denom = other.real**2 + other.imag**2
            real = (self.real * other.real + self.imag * other.imag) / denom
            imag = (self.imag * other.real - self.real * other.imag) / denom
            return Complex(real, imag)
        else:
            raise TypeError('Non-trim operand type for "/"')

com_num_1 = Complex(5,3)
com_num_2 = Complex(2,5)
print (com_num_1.__truediv__(com_num_2))
print (com_num_2.__sub__(com_num_1))