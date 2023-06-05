# Создайте класс для конвертирования температуры из 
# Цельсия в Фаренгейт и наоборот. У класса должно быть 
# два статических метода: для перевода из Цельсия в Фаренгейт и для перевода из Фаренгейта 
# в Цельсий. Также класс должен считать количество подсчетов температуры и 
# возвращать это значение с помощью статического метода.

class Converter:
    counting_counter = 0
    def celsius_convert_in_fahrenheit (celsius,fahrenheit=32):
        fahrenheit = (celsius * (9/5)) + 32
        Converter.counting_counter += 1
        return fahrenheit

    def fahrenheit_convert_in_celsius (fahrenheit,celsius=0):
        celsius = (fahrenheit - 32) * (5/9)
        Converter.counting_counter += 1
        return celsius
    
    def get_count():
        return Converter.counting_counter
    
print (Converter.celsius_convert_in_fahrenheit(0))
print (Converter.fahrenheit_convert_in_celsius(0))
print (Converter.get_count())