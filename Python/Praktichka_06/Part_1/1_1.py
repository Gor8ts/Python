# Реализуйте класс «Человек». Необходимо хранить в
# полях класса: ФИО, дату рождения, контактный телефон,
# город, страну, домашний адрес. Реализуйте методы класса
# для ввода данных, вывода данных, реализуйте доступ к
# отдельным полям через методы класса.

class Human:

    def __init__(self,familiya = 0, imja = 0, po_batjkovi = 0):
            
        self.familiya = familiya
        self.imja = imja
        self.po_batjkovi = po_batjkovi


    def __init__(self, birthday_date = 0, number_phone = 0, city = 0, country = 0, home_address = 0):
        
        self.birthday_date = birthday_date
        self.number_phone = number_phone
        self.city = city
        self.country = country
        self.home_address = home_address

    def show_info (self):
        print (f'Familiya {self.familiya}\n Imja {self.imja}\n po batjkovi {self.po_batjkovi}\n'
               f'birthday date {self.birthday_date}\n number phone {self.number_phone}\n '
               f'city {self.city}\n country {self.country}\n home address {self.home_address}')
        return
    
    def put_familiya(self, f):
        self.familiya = f
    def put_imja(self, i):
        self.imja = i
    def put_po_batjkovi(self, b):
        self.po_batjkovi = b
    def put_birthday_date(self, bd):
        self.birthday_date = bd
    def put_number_phone(self, n):
        self.number_phone = n
    def put_city(self, c):
        self.city = c
    def put_country(self, t):
        self.country = t
    def put_home_address(self, h):
        self.home_address = h

    def get_familiya(self):
        return self.familiya
    def get_imja(self):
        return self.imja
    def get_po_batjkovi(self):
        return self.po_batjkovi
    def get_birthday_date(self):
        return self.birthday_date
    def get_number_phone(self):
        return self.number_phone
    def get_city(self):
        return self.city
    def get_country(self):
        return self.country
    def get_home_address(self):
        return self.home_address

human1 = Human()
human1.familiya ='Ivanov'
human1.imja = 'Ivan'
human1.po_batjkovi = 'Ivanovich'
human1.birthday_date = '24.03.1989'
human1.city = 'Kryviy Rig'
human1.country = 'Ukraine'
human1.number_phone = +380671846509
human1.home_address = 'pr. Miru 54'
human1.birthday_date ='24.03.1989'

human1.show_info()