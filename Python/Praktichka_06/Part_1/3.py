# Создайте класс «Страна». Необходимо хранить в полях класса: название страны, название континента, 
# количество жителей в стране, телефонный код страны, название столицы, название городов страны.
# Реализуйте методы класса для ввода данных, вывода данных, реализуйте доступ к отдельным полям через методы класса

class Country:

    def __init__(self,country_name = 'ccountry name',name_of_the_continent = 'name of the continent', 
                 number_of_inhabitants_in_the_country = 'number of inhabitants in the country', 
                 phone_code_of_the_country = 'phone_code_of_the_country',
                 name_of_the_capital = 'name of the capital',
                 name_of_the_cities_of_the_country = 'name of the cities of the country') -> None:
        self.country_name = country_name
        self.name_of_the_continent = name_of_the_continent
        self.number_of_inhabitants_in_the_country = number_of_inhabitants_in_the_country
        self.phone_code_of_the_country = phone_code_of_the_country
        self.name_of_the_capital = name_of_the_capital
        self.name_of_the_cities_of_the_country = name_of_the_cities_of_the_country

    def show_info(self):
        
        print (f'\t\tcountry name: {self.country_name}\n \t\tname of the continent: {self.name_of_the_continent}\n \
               number of inhabitants in the country: {self.number_of_inhabitants_in_the_country}\n \
               phone code of the country: {self.phone_code_of_the_country}\n\t\tname of the capital: {self.name_of_the_capital}\
               \n\t\tname of the cities of the country: {self.name_of_the_cities_of_the_country}')
        
     
    def put_in_country_name(self,name):
        self.country_name = name
    def put_in_name_of_the_continent(self,name):
        self.name_of_the_continent = name
    def put_in_number_of_inhabitants_in_the_country(self,name):
        self.number_of_inhabitants_in_the_country = name
    def put_in_phone_code_of_the_country(self,name):
        self.phone_code_of_the_country = name
    def put_in_name_of_the_capital(self,name):
        self.name_of_the_capital = name
    def put_in_name_of_the_cities_of_the_country(self,index,name):
        self.name_of_the_cities_of_the_country[index] = name

country = Country('Ukraine','Eurasija',52000000,'+380(000)000-00-00','Kiev',['Charkiv','Lviv','Donetsk','Cherson','Dnipro','Vugledar'])
country.show_info()
country.put_in_name_of_the_cities_of_the_country(2,'Do')
country.show_info()