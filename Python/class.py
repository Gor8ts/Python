# # table
# my_height = 70
# my_lenght = 120
# my_width = 70

# #chair
# my_height_2 = 40
# my_lenght_2 = 50
# my_width_2 = 50


# def put_cup_of_tea(h,l,w):
#     pass

# put_cup_of_tea(my_height_2,my_lenght_2,my_width_2)


class Table:
    count = 0

    def put_cup_of_tea(self):
        print("OK")
        print(self)

    def __init__(self,h=0,l=0,w=0):
        self.my_height = h
        self.__my_lenght = l
        self._my_width = w
        Table.count += 1
    
    def get_lenght(self):
        return self.__my_lenght
    def put_lenght(self, l):
        self.__my_lenght = l
    def get_info(self):
        return [self.my_height, self.__my_lenght, self._my_width]
    def show_info(self):
        print('This is ..........')

    def __str__(self):
        pass
    def __str__(self):
        return "This is table with lenght " + str(self._my_width)
    def __len__(self):
        return 4637846879463218


table = Table()
# table.fhbsjakfbasjk = 9
table.put_cup_of_tea()
print(table.my_height)
table.my_height = 40
table.__my_lenght = 9
table._my_width = 10
print('len = ',table.__my_lenght)
print('len = ',table.get_lenght())

new_table = Table(2,3,4)
print('new = ', new_table.get_lenght())
new_table.put_lenght(12)

print('new = ', new_table.get_lenght())

print(table)
# print(new_table)

# a = 'frefewgrwgtr'
print(table.count, new_table.count)

info = new_table.get_info()
print(len(table))

