# Создайте класс для перевода из метрической системы 
# в английскую и наоборот. Функциональность необходимо 
# реализовать в виде статических методов. Обязательно 
# реализуйте перевод мер длины.

class Converter:
    @staticmethod
    def meters_to_feet (meters):
        feet = meters * 3.28084
        return feet
    
    @staticmethod
    def feet_to_meters(feet):
        meters = feet / 3.28084
        return meters
    
feet = Converter.meters_to_feet(10)
print(feet)
meters = Converter.feet_to_meters(32.8084)
print(meters)