# Создать класс Flat (квартира). Реализовать перегруженные операторы:
# ■ Проверка на равенство площадей квартир (операция 
# ==);
# ■ Проверка на неравенство площадей квартир (операция !=);
# ■ Сравнение двух квартир по цене (операции > < <= >=).

class Flat:

    def __init__(self,square,price) -> None:
        self.square = square
        self.price = price

    def __eq__(self,other):
        if isinstance (other,Flat):
            return self.square == other.square
        else:
            return False
        
    def __ne__(self,other):
        if isinstance(other,Flat):
            return self.square != other.square
        else:
            return False

    def __gt__(self,other):
        if isinstance(other,Flat):
            return self.price > other.price
        else:
            raise TypeError ('Non-trim operand type for ">"')

    def __lt__(self,other):
        if isinstance(other,Flat):
            return self.price < other.price
        else:
            raise TypeError('Non-trim operand type for "<"')
        
    def __ge__(self,other):
        if isinstance(other,Flat):
            return self.price >= other.price
        else:
            raise TypeError('Non-trim operand type for ">="')
        
    def __le__(self,other):
        if isinstance (other,Flat):
            return self.price <= other.price
        else:
            raise TypeError ('Non-trim operand type for "<="')
        
    def __str__(self) -> str:
        return f'apartment area {self.square} square meters, price: {self.price} uan'
    
flat1 = Flat(48,11235)
flat2 = Flat(50,10450)
print (flat1.__lt__(flat2))