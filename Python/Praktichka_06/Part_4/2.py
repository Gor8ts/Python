# Используя механизм множественного наследования разработайте класс "Автомобиль".
# Должны быть классы "Колеса", "Двигатель", "двери" и т.д.


class Weels:
    def __init__(self,rubber,discs,) -> None:
        self.__rubber = rubber
        self.__discs = discs

class Engin:
    def __init__(self,gas,cylinders,) -> None:
        self.__gas = gas
        self.__cylinders = cylinders

    def check_spark(self):
        print('there is a spark')


class Door:
    def __init__(self,power_window,numberOfdoors) -> None:
        self.__power_window = power_window
        self.__numberOfdoors = numberOfdoors

    def roll_down_the_window(self):
        print ('window roll doun')

class Car(Weels,Engin,Door):
    def __init__(self,power_window,number_of_doors,gas,cylinders,rubber,discs,wincod) -> None:
        Weels.__init__(self,rubber,discs,)
        Engin.__init__(self,gas,cylinders,)
        Door.__init__(self,power_window,number_of_doors)
        self.__win_cod = wincod
    
    def check_spark(self):
        print('The door is broken and the power window does not work')

    def get_info(self):
        return self.__win_cod

zaporojets = Car(2,5,"dizel", 8, 'summer',13,'xurfo239042kfvkl')

zaporojets.roll_down_the_window()
zaporojets.check_spark()
print(zaporojets.get_info())
    
    