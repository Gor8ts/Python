# Создать базовый класс «Животное» и производныеклассы «Тигр», «Крокодил», «Кенгуру». 
# С помощью конструктора установить имя каждого животного и его характеристики. 
# Создайте для каждого класса необходимые методы и поля.

class Animal:
    def __init__(self,paws, tail,teeth) -> None:
        self.paws = paws
        self.tail = tail
        self.teeth = teeth
        
class Tiger(Animal):
    def __init__(self, paws, tail, teeth, ears, wool) -> None:
        super().__init__(paws, tail, teeth)
        self.ears = ears
        self.wool = wool
    
    def jerk(self,hungry):
        
        if hungry == 'hunts':
            print('The tiger makes a move. He hunts')
        else:
            print ('The tiger is resting. He\'s full.')
    

class Crocodile(Animal):
    def __init__(self, paws, tail, teeth, scales) -> None:
        super().__init__(paws, tail, teeth)
        self.scales = scales

class Kangaroo(Animal):
    def __init__(self, paws, tail, teeth, bag, ears) -> None:
        super().__init__(paws, tail, teeth)
        self.bag = bag
        self.ears = ears

tiger = Tiger(4,'have tail','have teeth','have ears', 'have wool')
tiger.jerk('hunts')
# crocodile = C