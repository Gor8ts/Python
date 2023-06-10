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
        return self.number_of_books.__add__(a)
    
    def sub (self,a):
        return self.number_of_books.__sub__(a)
    
    def iadd(self,a):
        return self.number_of_books.__iadd__(a)
    
    def isub(self,a):
        return self.number_of_books.__isub__(a)
    
    def __lt__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books < other.number_of_books
        else:
            raise TypeError('Non-trim operand type for "<"')
    
    def __le__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books <= other.number_of_books
        else:
            raise TypeError('Non-trim operand type for "<="')
        
    def __gt__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books > other.number_of_books
        else:
            raise TypeError('Non-trim operand type for ">"')
        
    def __ge__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books >= other.number_of_books
        else:
            raise TypeError('Non-trim operand type for ">="')
    
    def __eq__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books == other.number_of_books
        else:
            return False
        
    def __ne__ (self,other):
        if isinstance(other,Library):
            return self.number_of_books != other.number_of_books
        else:
            return False
        
lib1 = Library('metallurgov library','leninskogo street',255)
lib2 = Library('komsomol','nova street',400)
print(lib1.__ge__(lib2))
print (lib2.__ge__(lib1))