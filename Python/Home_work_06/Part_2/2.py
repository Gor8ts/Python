# К уже реализованному классу «Книга» добавьте конструктор, а также необходимые перегруженные методы.

class Book:
    def __init__(self,title_of_the_book, year_of_issue, publisher, genre, author, price) -> None:
        self.title_of_the_book = title_of_the_book
        self.year_of_issue =  year_of_issue
        self.publisher = publisher
        self.genre = genre
        self.author = author
        self.price = price
    
    def get_info(self):
        return self.title_of_the_book, self.year_of_issue, self.publisher, self.genre,\
                self.author, self.price
    
    def put_title_of_the_book(self,change):
        self.title_of_the_book = change
    def put_year_of_issue(self,change):
        self.year_of_issue = change
    def put_publisher(self,change):
        self.publisher = change
    def put_genre(self,change):
        self.genre = change
    def put_author(self,change):
        self.author = change
    def put_price(self,change):
        self.price = change
    def __str__(self):
        return  'He is the world\'s most famous bestselling author.: ' + str(self.author)

my_book = Book('Three Pigs',1923,'Kiyv pablish company','children\'s literature',\
               'I am aythor','190 uah')
my_book.put_price('230 uah')
print (my_book.get_info())
