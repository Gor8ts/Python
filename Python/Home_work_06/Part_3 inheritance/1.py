# Создайте класс Device, который содержит информацию об устройстве.
# С помощью механизма наследования, реализуйте класс 
# CoffeeMachine (содержит информацию о кофемашине), 
# класс Blender (содержит информацию о блендере), класс 
# MeatGrinder (содержит информацию о мясорубке).
# Каждый из классов должен содержать необходимые 
# для работы методы.

class Device:
    def __init__(self,engin = '500 Wt',storage_tank ='0.5 л',button = 2) -> None:
    
        self.engin = engin
        self.storage_tank = storage_tank
        self.button = button

class CoffeeMachine(Device):
    def __init__(self, engin, storage_rank, button = 9, dispenser = 'have') -> None:
        super().__init__(engin,storage_rank,button)
        self.dispenser = dispenser
    
    def put_in_button(self,button):
        self.button = button
        return self.button

    def put_dispenser(self,dispenser):
        self.dispenser = dispenser
            
    def choose_a_brand_of_coffee(self,choice):
        print ('americano - 1','espresso - 2','capuchino - 3')
        choice = int (input ('Enter your choice: '))
        if choice == 1:
            self.choose_milk_supplement(1)
        elif choice == 2:
            self.choose_milk_supplement(2)
        elif choice == 3:
            self.choose_milk_supplement(3)

    def choose_milk_supplement(self,choice):
        
        print('with milk - 1', 'with cream - 2')
        choice = int (input ('Enter number your choice: '))
        if choice == 1:
            self.choose_sugar(1)
            print ('')
        elif choice == 2:
            self.choose_sugar(2)

    def choose_sugar(self,choice):
        print ('with sugar - 1', 'without sugar - 2')
        choice = int (input ('Enter number your choice: '))
        if choice == 1:
            self.choose_amount_of_sugar(1)
        elif choice == 2:
            print ('A good choice. Sugar adds extra weight. Wait for the end of cooking. Your coffee will be ready in a couple of minutes. Best wishes.')
    
    def choose_amount_of_sugar(self,choice):
        print('1 gram','2 gram','3 gram','4 gram','5 gram')
        choice = int(input('Enter number choice: '))
        if choice == 1:
            print ('you added 1 grams of sugar.')
        elif choice == 2:
            print ('you added 2 grams of sugar.')
        elif choice == 3:
            print ('you added 3 grams of sugar.')
        elif choice == 4:
            print ('you added 4 grams of sugar.')
        elif choice == 5:
            print ('you added 5 grams of sugar.')
        else:
            print ('You need a sweetened drink or diabetes')

        
class Blender(Device):
    def __init__(self,engin,storage_rank,button,whisk = 2) -> None:
        super().__init__(engin,storage_rank,button)
        self.whisk = whisk

    def turn_on(self):
        print('Blender worked. To put something in it to whip, turn it off.')
    def turn_off(self):
        print ('Blender is not working. Put something in it to whip and turn it on.')

class MeatGrinder(Device):
    def __init__(self,engin,storage_rank,button,knives) -> None:
        super().__init__(engin,storage_rank,button)
        self.knives = knives

    def turn_on(self):
        print ('The meat grinder is turned on and you can put meat into it for chopping')
    def turn_off(self):
        print('Meat grinder is turn_off')

coffe = CoffeeMachine(1,2)
# coffe.choose_a_brand_of_coffee(1)
ground_meat = MeatGrinder()
# ground_meat.turn_on