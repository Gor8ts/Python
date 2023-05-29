# Напишите функцию, которая получает два списка в
# качестве параметра и возвращает список, содержащий
# элементы обоих списков.

def list_concatenation (a,b):
    lst1 = list(a)
    lst2 = list(b)
    lst1.extend(lst2)
    return lst1

print (list_concatenation([21,2,414,1,'cdc',1,],[3,5,2,'fsl',3,'3',]))

