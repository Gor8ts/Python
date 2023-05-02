# Подсчитать количество целых чисел в диапазоне от 
# 100 до 9999 у которых все цифры разные.



count = 0
count_ = 0
for i in range(100, 1000):
    a = i % 10
    i //= 10
    b = i % 10
    i //= 10
    c = i 
    if a == b or a == c or b == c:
        count += 1
    else:
        count_ += 1


for i in range(1000, 10000):
    a = i % 10
    i //= 10
    b = i % 10
    i //= 10
    c = i % 10
    i //= 10
    d = i
    if a == b or a == c or a == d or b == c or b == d or c == d:
    # if [a,b,c,d] == [a,b,c,d]:
        count += 1
    else:
        count_ += 1
print("Кількість чисел з різними цифрами в діапазоні 100-9999: ",count_)

