# К уже реализованному классу «Стадион» добавьте 
# конструктор, а также необходимые перегруженные методы.


class Stadium:
    def __init__(self, stadium_name, opening_date, country, city, capacity) -> None:
        self.stadium_name = stadium_name
        self.opening_date = opening_date
        self.country = country
        self.city = city
        self.capacity = capacity

    def get_info(self):
        return self.stadium_name, self.opening_date, self.country, self.city, self.capacity
    
    def put_stadium_name(self,change):
        self.stadium_name = change
    def put_opening_date(self,change):    
        self.opening_date = change
    def put_country(self,change):
        self.country = change
    def put_city(self,change):    
        self.city = change
    def put_capacity(self,change):   
        self.capacity = change
    def __str__(self):
        return  'It is the largest stadium in the world with a total capacity of: ' + str(self.capacity)

stadium = Stadium('Metallurg','not open now','Ukraine','Krivyi Rig',50000)
stadium.put_capacity(40000)
print(stadium.get_info())