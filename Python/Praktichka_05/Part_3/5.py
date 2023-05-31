# Напишите рекурсивную функцию, которая принимает список из 100 целых чисел, полученных случайным
# образом, и находит позицию, с которой начинается последовательность из 10 чисел, сумма которых 
# минимальна.

import random

def find_sequence_start(numbers, start=0, min_sum=1111111111111111111, min_sum_start=0):
    if len(numbers) > 10:
        
        _sum = sum(numbers[0:10])
        if _sum < min_sum:
            min_sum = _sum
            min_sum_start = start

        print (_sum, end=' ')
        return find_sequence_start(numbers[1:], start + 1, min_sum, min_sum_start)
    else:
        return min_sum_start


numbers = [random.randint(0, 100) for _ in range(100)]
print(numbers)
sequence_start_position = find_sequence_start(numbers)

print("The position from which the sequence of 10 numbers with the minimum sum starts:", sequence_start_position)
