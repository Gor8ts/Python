# Реализуйте класс «Автомобиль». Необходимо хранить в полях класса: 
# название модели, год выпуска, производителя, объем двигателя, цвет машины, цену. 
# Реализуйте методы класса для ввода данных, вывода данных, реализуйте доступ к отдельным полям 
# через методы класса.

class Car:
    def __init__(self,model_name = 0, year_of_issue = 0, manufacturer = 0, engine_capacity = 0,
                 car_color = 0, price = 0) -> None:
        self.model_name = model_name
        self.year_of_issue = year_of_issue
        self.manufacturer = manufacturer
        self.engine_capacity = engine_capacity
        self.car_color = car_color
        self.price = price

    def get_info(self):
        return [self.model_name,self.year_of_issue,self.manufacturer,self.engine_capacity,
                self.car_color, self.price]
     
    def put_model_name(self, m):
        self.model_name = m
    def put_year_of_issue(self, y):
        self.year_of_issue = y
    def put_manufacturer(self, m):
        self.manufacturer = m
    def put_engine_capacity(self, e):
        self.engine_capacity = e
    def put_car_color(self, n):
        self.car_color = n
    def put_price(self, p):
        self.price = p
    
my_car = Car('Lamba',2020,'China',2,'white',1000000)
print(my_car.get_info())
my_car.put_car_color('green')
print (my_car.get_info())