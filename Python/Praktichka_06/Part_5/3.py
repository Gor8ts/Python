# Создайте класс Библиотека. Класс предназначен для 
# хранения информации о библиотеке (название, адрес, количество книг и т.д.). 
# Реализуйте необходимые для класса методы. Используя перегрузку операторов реализуйте 
# для него следующие арифметические операции:
# ■ + добавляет к количеству книг указанное значение;
# ■ - вычитает из количества книг указанное значение;
# ■ += добавляет к количеству книг указанное значение;
# ■ -= вычитает из количества книг указанное значение;
# Используя перегрузку операторов реализуйте (сравнение по количеству книг):
# ■ <;
# ■ >;
# ■ <=;
# ■ >=;
# ■ ==;
# ■ !=.

class Library:
    def __init__(self,name_library,adress,number_of_books) -> None:
        self.name_library = name_library
        self.adress = adress
        self.number_of_books = number_of_books

    def add (self,a):
        self.number_of_books.__add__(a)
        return self.number_of_books
    
    def sub (self,a):
        self.number_of_books.__sub__(a)
        return self.number_of_books
    
    def iadd(self,a):
        self.number_of_books.__iadd__(a)
        return self.number_of_books
    
    def isub(self,a):
        self.number_of_books.__isub__(a)
        return self.number_of_books