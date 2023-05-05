# Вывести на экран ромб из звездочек.



for i in range(9):
    for o in range(9):
        if i+o == 4 or i-o == 4 or i+o == 12 or i-o == -4:
        
            print('*', end = '')
        else:
            
            print (' ',end = '')
       
    print()

