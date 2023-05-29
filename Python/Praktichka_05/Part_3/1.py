# Написать рекурсивную функцию нахождения степени
# числа.

def my_pow (n,pow):
    
    if (pow == 1):
        return n
    return my_pow (n,pow-1)*n

print (my_pow(2,10))