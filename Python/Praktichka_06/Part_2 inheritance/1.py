# Создайте класс Human, который будет содержать
# информацию о человеке.
# С помощью механизма наследования, реализуйте класс
# Builder (содержит информацию о строителе), класс Sailor
# (содержит информацию о моряке), класс Pilot (содержит
# информацию о летчике).
# Каждый из классов должен содержать необходимые
# для работы методы.


class Human:
    def __init__(self, name, surname, age) -> None:
        self.name = name
        self.surname = surname
        self.age = age
    def show_info(self):
        print(self.name, self.surname, self.age,)
        
class Builder(Human):
    def __init__(self,name, surname, age, eix) -> None:
        Human.__init__(self,name, surname, age)
        self.experience_in_construction = eix
    def show_info(self):
        super().show_info()
        print(self.experience_in_construction)

class Sailor(Human):
    def __init__(self, name, surname, age, ets) -> None:
        Human.__init__(self, name, surname, age)
        self.exits_to_the_sea = ets
    def show_info(self):
        super().show_info()
        print(self.exits_to_the_sea)

class Pilot(Human):
    def __init__(self, name, surname, age, fh, m) -> None:
        Human.__init__(self, name, surname, age)
        self.flying_hours = fh
        self.__runk = m
    def show_info(self):
        super().show_info()
        print(self.flying_hours, self.__runk)



bilder = Builder('Vasiliy', 'Petrovich', 150, 100)
bilder.show_info()
sailor = Sailor('Pedro','Gundosovich', 90, 342)
sailor.show_info()
pilot = Pilot('Chukcha','Bezparashuta', 30, 299, 'major')
pilot.show_info()