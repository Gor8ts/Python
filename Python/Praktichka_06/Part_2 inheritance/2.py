# Создайте класс Passport (паспорт), который будет
# содержать паспортную информацию о гражданине заданной страны.
# С помощью механизма наследования, реализуйте
# класс ForeignPassport (загран.паспорт) производный от
# Passport.
# Напомним, что заграничный паспорт содержит помимо паспортных данных, также данные о визах, номер
# заграничного паспорта.Каждый из классов должен содержать необходимые
# методы.


class Passport:
    def __init__(self,name,surname,city,district,address,nop) -> None:
        self.name = name
        self.surname = surname
        self.city = city
        self.district = district
        self.address = address
        self.number_of_passport = nop
    
    def get_info(self):
        return [self.name, self.surname, self.city, self.district, self.address, self.number_of_passport]
    
class ForeignPassport (Passport):
    def __init__(self, name, surname, city, district, address, nop, visa, numFP) -> None:
        super().__init__(name, surname, city, district, address, nop)
        self.visa = visa
        self.numFP = numFP

    def put_visa(self,extend):
        self.visa = extend

    def get_info(self):
        return super().get_info() + [self.visa, self.numFP]

foreign_passport = ForeignPassport('Kyzja','Pavlik','Kyiv', 'Obolonskiy', 'Miry 54','AH 38465','visa',85463408034)
print(foreign_passport.get_info())
foreign_passport.put_visa('visa extended')
print (foreign_passport.get_info())
