# Написать функцию, которая принимает две даты
# (т.е. функция принимает шесть параметров) и вычисляет
# разность в днях между этими датами. Для решения этой
# задачи необходимо также написать функцию, которая
# определяет, является ли год високосным.

'''
d = [31,28,31]
23.03.2023
19.02.2022
4 m=1

18:33
17:43
0:50

34
27


'''
def date(dd1,mm1,year1,dd2,mm2,year2):
    
    lst_date = [dd1,mm1,year1,dd2,mm2,year2]
    high_year = 0
    difference_counter_year = 0
    difference_counter_month = 0
    difference_counter_day = 0
    day_high = 31
    day_medium = 30
    day_in_high_year = 29
    day_low = 28
    for day in lst_date:
        if 0 < dd1 < 31 or 0 < dd2 < 31:
            if 0 < mm1 < 12 or 0 < mm2 < 12:
                continue
            else:
                print('invalid input month')
                break
        else:
            print('invalid input day')
            break
        
    # for month in lst_date:
    #     if 0 < mm1 < 12 or 0 < mm2 < 12:
    #         continue
    #     else:
    #         print('invalid input month')
    #         break
    
    if year1 % 4 == 0:
        high_year = year1
    elif year2 % 4 == 0:
        high_year = year2

    # for month in lst_date:


    if year2 > year1 or mm2 > mm1:
        if mm2 == 1 or mm2 == 3 or mm2 == 5 or mm2 == 7 or mm2 == 8 or mm2 == 10 or mm2 == 12:
            if dd2 < dd1:
                mm2 -= 1
                dd2 += day_high
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
            else:
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
        elif mm2 == 4 or mm2 == 6 or mm2 == 9 or mm2 == 11:
            if dd2 < dd1:
                mm2 -= 1
                dd2 += day_medium
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
            else:
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
        elif mm2 == 2:
            if dd2 < dd1:
                mm2 -= 1
                dd2 += day_low
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
            else:
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
        elif high_year != 0:
            if dd2 < dd1:
                mm2 -= 1
                dd2 += day_in_high_year
                difference_counter_day = dd2 - dd1
                difference_counter_month = mm2 - mm1
                difference_counter_year = year2 - year1
    else:
        if mm1 == 1 or mm1 == 3 or mm1 == 5 or mm1 == 7 or mm1 == 8 or mm1 == 10 or mm1 == 12:
            if dd1 < dd2:
                mm1 -= 1
                dd1 += day_high
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
            else:
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
        if mm1 == 4 or mm1 == 6 or mm1 == 9 or mm1 == 11:
            if dd1 < dd2:
                mm1 -= 1
                dd1 += day_medium
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
            else:
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
        if mm1 == 2:
            if dd1 < dd2:
                mm1 -= 1
                dd1 += day_low
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
            else:
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
        if high_year != 0:
            if dd1 < dd2:
                mm1 -= 1
                dd1 += day_in_high_year
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
            else:
                difference_counter_day = dd1 - dd2
                difference_counter_month = mm1 - mm2
                difference_counter_year = year1 - year2
            


        
            

    
    

d = date(24,4,1996,30,5,1997)

print (d)