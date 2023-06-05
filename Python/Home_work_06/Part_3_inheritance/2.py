# Создайте класс Ship, который содержит информацию 
# о корабле.
# С помощью механизма наследования, реализуйте 
# класс Frigate (содержит информацию о фрегате), класс 
# Destroyer (содержит информацию об эсминце), класс 
# Cruiser (содержит информацию о крейсере).
# Каждый из классов должен содержать необходимые 
# для работы методы.

class Ship():
    def __init__(self,size,displacement,design,materials,armament,propulsion,protection_sistems) -> None:
        self.size = size
        self.displacement = displacement
        self.design = design
        self.materials = materials
        self.armament = armament
        self.propulsion = propulsion
        self.protection_sistems = protection_sistems
         
class Frigate(Ship):
    def __init__(self, size = 0, displacement = 0, design = 0, materials = 0, armament = 0, \
                 propulsion = 0, protection_sistems = 0) -> None:
        super().__init__(size, displacement, design, materials, armament, propulsion,\
                          protection_sistems)

    def enemy_detection(self):
        print ('Detection enemy. Put weapons on alert')
        return self.weapons()
    def weapons(self):
        print ('Weapons are being prepared for use')

class Destroyer(Ship):
    def __init__(self, size = 0, displacement = 0, design = 0, materials = 0, armament = 0,\
                  propulsion = 0, protection_sistems = 0) -> None:
        super().__init__(size, displacement, design, materials, armament, propulsion, \
                         protection_sistems)
    
    def firing_practice(self):
        print ('Practice firing is underway, unauthorized persons are requested to leave the shooting site')

class Cruiser(Ship):
    def __init__(self, size = 0, displacement = 0, design = 0, materials = 0, armament = 0,\
                  propulsion = 0, protection_sistems = 0) -> None:
        super().__init__(size, displacement, design, materials, armament, propulsion,\
                          protection_sistems)

    def training_maneuvers(self):
        print('A large cruiser is less maneuverable due to it\'s sizebut does it\'s job')

frigat = Frigate()
print (frigat.enemy_detection())
destroyer = Destroyer()
print (destroyer.firing_practice())
cruiser = Cruiser()
print (cruiser.training_maneuvers())