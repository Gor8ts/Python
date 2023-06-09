# Создайте класс Date, который будет содержать информацию о дате (день, месяц, год).
# С помощью механизма перегрузки операторов, определите операцию разности двух дат 
# (результат в виде количества дней между датами), а также операцию увеличения даты 
# на определенное количество дней.

class Date:

    def __init__(self,day,month,year) -> None:
        self.day = day
        self.month = month
        self.year = year

    def date_difference(self,other):
        d1 = self.day + self.month * 30 + self.year * 365
        d2 = other.day + other.month * 30 + other.year * 365
        difference = abs(d1-d2)
        return difference

    def summ(self,days):
        total_days = self.day + days
        year = self.year
        month = self.month

        while total_days > 365:
            if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0:
                if total_days > 366:
                    total_days -= 366
                    year += 1
                else:
                    break
            else:
                total_days -= 365
                year += 1

        while total_days > 30:
            if month == 12:
                if total_days > 31:
                    total_days -= 31
                    month = 1
                    year += 1
                else:
                    break
            elif month in [4,6,9,11]:
                if total_days > 30:
                    total_days -= 30
                    month += 1
                else:
                    break
            else:
                if total_days > 31:
                    total_days -= 31
                    month += 1
                else:
                    break

        day = total_days

        return Date(day,month,year)
    

d1 = Date (25,2,2030)
d2 = Date (5,13,2025)

print (Date.date_difference(d1,d2))
print (d1.summ(1515))