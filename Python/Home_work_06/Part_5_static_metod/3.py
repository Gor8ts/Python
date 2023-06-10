# Вам необходимо создать класс Airplane (самолет). 
# С помощью перегрузки операторов реализовать:
# ■ Проверка на равенство типов самолетов (операция 
# = =); 
# ■ Увеличение и уменьшение пассажиров в салоне самолета (операции + - += -=);
# ■ Сравнение двух самолетов по максимально возможному количеству пассажиров на борту (операции > 
# < <= >=).

class Airplane:

    def __init__(self, type, max_passengers, current_passengers=0):
        self.type = type
        self.max_passengers = max_passengers
        self.current_passengers = current_passengers

    def __str__(self):
        return f"Aircraft type {self.type}, maximum number of passengers: {self.max_passengers}, current number of passengers: {self.current_passengers}"

    def __eq__(self, other):
        if isinstance(other, Airplane):
            return self.type == other.type
        else:
            return False

    def __add__(self, passengers):
        if isinstance(passengers, int):
            new_passengers = self.current_passengers + passengers
            if new_passengers <= self.max_passengers:
                self.current_passengers = new_passengers
            else:
                raise ValueError("Maximum number of passengers transported")
        else:
            raise TypeError("Invalid operand type for '+'")

    def __sub__(self, passengers):
        if isinstance(passengers, int):
            new_passengers = self.current_passengers - passengers
            if new_passengers >= 0:
                self.current_passengers = new_passengers
            else:
                raise ValueError("The number of passengers cannot be seen by me")
        else:
            raise TypeError("Invalid operand type for '-'")

    def __iadd__(self, passengers):
        self.__add__(passengers)
        return self

    def __isub__(self, passengers):
        self.__sub__(passengers)
        return self

    def __gt__(self, other):
        if isinstance(other, Airplane):
            return self.max_passengers > other.max_passengers
        else:
            raise TypeError("Invalid operand type for '>'")

    def __lt__(self, other):
        if isinstance(other, Airplane):
            return self.max_passengers < other.max_passengers
        else:
            raise TypeError("Invalid operand type for '<'")

    def __ge__(self, other):
        if isinstance(other, Airplane):
            return self.max_passengers >= other.max_passengers
        else:
            raise TypeError("Invalid operand type for '>='")

    def __le__(self, other):
        if isinstance(other, Airplane):
            return self.max_passengers <= other.max_passengers
        else:
            raise TypeError("Invalid operand type for '<='")
        
air1 = Airplane('boing',700)
air2 = Airplane('BPLA',0)
print(air1.__gt__(air2))