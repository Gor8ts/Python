# Запрограммируйте класс Money (объект класса оперирует одной валютой) для работы с деньгами.
# В классе должны быть предусмотрены поле для хранения целой части денег (доллары, евро, гривны и т.д.) и 
# поле для хранения копеек (центы, евроценты, копейки 
# и т.д.).
# Реализовать методы для вывода суммы на экран, задания значений для частей

class Money():
    def __init__(self,whole_part,fractional_part) -> None:
        self.whole_part = whole_part
        self.fractional_part = fractional_part
    
    def display_amount (self):
        print(f'{self.whole_part}.{self.fractional_part}')

    def set_amount (self,whole_part, fractional_part):
        self.whole_part = whole_part
        self.fractional_part = fractional_part

hryvni = Money(25,50)
hryvni.display_amount()
hryvni.set_amount(30,32)
hryvni.display_amount()