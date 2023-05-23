# Напишите функцию, которая проверяет является ли
# число простым. Число передаётся в качестве параметра.
# Если число простое нужно вернуть из метода true, иначе
# false.

def prime_number(a):
    if a < 2:
        return False
    for i in range(2, int(a ** 0.5) + 1):
        if a % i == 0:
            return False 
    return True

n = prime_number(3)

print (n)