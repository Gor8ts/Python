# Создайте класс «Город». Необходимо хранить в полях класса: 
# название города, название региона, название страны, количество жителей в городе, почтовый индекс 
# города, телефонный код города. Реализуйте методы класса для ввода данных, вывода данных, реализуйте 
# доступ к отдельным полям через методы класса.

class City:

    def __init__(self,city_name = 'city name',name_of_the_region = 'name_of_the_region', 
                 name_of_the_country = 'name_of_the_country',
                 number_of_inhabitants_in_the_city = 'number_of_inhabitants_in_the_city', 
                 postal_code = 'postal_code', phone_code_of_the_city = 'phone_code_of_the_city') -> None:
        self.city_name = city_name
        self.name_of_the_region = name_of_the_region
        self.name_of_the_country = name_of_the_country
        self.number_of_inhabitants_in_the_city = number_of_inhabitants_in_the_city
        self.postal_code = postal_code
        self.phone_code_of_the_city = phone_code_of_the_city

    def show_info(self):
        
        print (f'\t\tcity name: {self.city_name}\n \t\tname of the region: {self.name_of_the_region }\n \
               name of the country: {self.name_of_the_country}\n \
               number of inhabitants in the city: {self.number_of_inhabitants_in_the_city}\n \
               postal code: {self.postal_code}\n \t\tphone code of the city: {self.phone_code_of_the_city}')
        
     
    def put_in_city_name(self,name):
        self.city_name = name
    def put_in_name_of_the_region(self,name):
        self.name_of_the_region = name
    def put_in_name_of_the_country(self,name):
        self.name_of_the_country = name
    def put_in_number_of_inhabitants_in_the_city(self,name):
        self.number_of_inhabitants_in_the_city = name
    def put_in_postal_code(self,name):
        self.postal_code = name
    def put_in_phone_code_of_the_city(self,name):
        self.phone_code_of_the_city = name
        

city = City('Krivoy Rog','Dnepropetrovskaja obl','Ukraine',800000,50026,'0564')
city.show_info()
