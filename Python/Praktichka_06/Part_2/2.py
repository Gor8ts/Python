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
    def get_info():
        pass
    
class ForeignPassport (Passport):
    def __init__(self, name, surname, city, district, address, nop) -> None:
        super().__init__(name, surname, city, district, address, nop, visa, numFP,)
        self.visa = visa
        
