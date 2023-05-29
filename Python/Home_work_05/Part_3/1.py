# Написать рекурсивную функцию нахождения наибольшего общего делителя двух целых чисел.

def max_divider(a,b):
    
    if b == 0:
        return a
    else:
        return max_divider (b,a % b)
        
    
print (max_divider(78,76))
    
