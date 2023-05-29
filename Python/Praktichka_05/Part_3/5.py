# Напишите рекурсивную функцию, которая принимает список из 100 целых чисел, полученных случайным
# образом, и находит позицию, с которой начинается последовательность из 10 чисел, сумма которых 
# минимальна.

import random
def find_sequence_start(numbers, start=0, min_sum=float('inf'), current_sum=0):
    if start + 10 > len(numbers):
        return start - 1

    current_sum = sum(numbers[start:start + 10])
    if current_sum < min_sum:
        min_sum = current_sum
        min_sum_start = start

    print (numbers)
    return find_sequence_start(numbers, start + 1, min_sum, current_sum)



numbers = [random.randint(0, 100) for _ in range(100)]
sequence_start_position = find_sequence_start(numbers)

print("The position from which the sequence of 10 numbers with the minimum sum starts:", sequence_start_position)
