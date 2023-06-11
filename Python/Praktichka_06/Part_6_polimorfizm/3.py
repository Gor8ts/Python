# Создать базовый класс «Домашнее животное» и производные классы «Собака», «Кошка», «Попугай», «Хомяк». 
# С помощью конструктора установить имя каждого животного и его характеристики. Реализуйте для каждого 
# из классов методы: 
# ■ Sound — издает звук животного (пишем текстом в 
# консоль);
# ■ Show — отображает имя животного;
# ■ Type — отображает название его подвида;

class Pet:

    def __init__(self, name, weight, breed, animal_sound) -> None:
        self.name = name
        self.weight = weight
        self.breed = breed
        self.animal_sound = animal_sound

    def sound(self):
        return f'the sound that this animal makes sounds like this: {self.animal_sound}'
    
    def show (self):
        return f'name pet: {self.name}'
    
    def type_pet(self):
        return f'breed of this animal: {self.breed}'
    
class Dog(Pet):
    
    def __init__(self, name, weight, breed, animal_sound, paw = 4, tail = 'have') -> None:
        super().__init__(name, weight, breed, animal_sound)
        self.paw = paw
        self.tail = tail

    def sound(self):
        return super().sound()
    
    def show(self):
        return super().show()
    
    def type_pet(self):
        return super().type_pet()

class Cat(Pet):

    def __init__(self, name, weight, breed, animal_sound, paw, tail) -> None:
        super().__init__(name, weight, breed, animal_sound)
        self.paw = paw
        self.tail = tail

    def sound(self):
        return super().sound()
    
    def show(self):
        return super().show()
    
    def type_pet(self):
        return super().type_pet()
    
class Parrot(Pet):

    def __init__(self, name, weight, breed, animal_sound, paw, wings, beak) -> None:
        super().__init__(name, weight, breed, animal_sound)
        self.paw = paw
        self.wings = wings
        self.beak = beak

    def sound(self):
        return super().sound()
    
    def show(self):
        return super().show()
    
    def type_pet(self):
        return super().type_pet()
    
class Hamster(Pet):

    def __init__(self, name, weight, breed, animal_sound, paw) -> None:
        super().__init__(name, weight, breed, animal_sound)
        self.paw = paw

    def sound(self):
        return super().sound()
    
    def show(self):
        return super().show()
    
    def type_pet(self):
        return super().type_pet()
    
dog = Dog('barsic', 10, 'ovcharca','barks')
print (dog.show())
cat = Cat('sheyla', 4, 'selo', 'miyau', 4, 'have')
print (cat.sound())
hamster = Hamster('Choma', 0.04, 'Phodopus sungorus', 'squeak', 4)
print (hamster.type_pet())