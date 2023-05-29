# Реализуйте класс «Книга». Необходимо хранить в 
# полях класса: название книги, год выпуска, издателя, 
# жанр, автора, цену. Реализуйте методы класса для ввода 
# данных, вывода данных, реализуйте доступ к отдельным 
# полям через методы класса.

class Book:
    def __init__(self,title_of_the_book, year_of_issue, publisher, genre, author, price) -> None:
        self.title_of_the_book = title_of_the_book
        self.year_of_issue =  year_of_issue
        self.publisher = publisher
        self.genre = genre
        self.author = author
        self.price = price
    
    def get_info(self):
        return [self.title_of_the_book, self.year_of_issue, self.publisher, self.genre,
                self.author, self.price]