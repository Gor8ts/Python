# class Persona:
#     def __init__(self, name, surname, age, tel) -> None:
#         self.name = name
#         self.surname = surname
#         self.age = age
#         self.tel = tel
    
#     def show_info(self):
#         print(self.name, self.surname, self.age, self.tel, end=' ')

# class Teacher(Persona):
#     def __init__(self, name, surname, age, tel, disc) -> None:
#         super().__init__(name, surname, age, tel)
#         self.disc = disc
    
#     def show_info(self):
#         super().show_info()
#         print(self.disc)

# class zav_kaf(Teacher):
#     def __init__(self, name, surname, age, tel, disc) -> None:
#         Persona.__init__(self, name, surname, age, tel)
#         self.disc = 123
#         print(zav_kaf.mro())



# teacher = Teacher("Dmytro", 'Medvediev', 37, '+380688535681', 'QA')
# teacher.show_info()
# # persona = Persona("Dmytro", 'Medvediev', 37, '+380688535681')
# # persona.show_info()
# zav = zav_kaf("Dmytro", 'Medvediev', 37, '+380688535681', 'QA')
# zav.show_info()

class Base:
    pass

class Camera:
    def __init__(self, r) -> None:
        self.__size = r
    def get_info(self):
        print('Camera', self.__size)

class Radio(Base):
    def __init__(self) -> None:
        pass
    def get_info(self):
        # print('Radio', self.__size)
        print('radio', self)

class Telephon(Camera, Radio):
    def __init__(self, size) -> None:
        Radio.__init__(self)
        Camera.__init__(self, size)
    def get_info(self):
        Radio.get_info(self)
        Camera.get_info(self)

tel = Telephon(1)
tel.get_info()
print('tel  ', tel)
print(Telephon.mro())