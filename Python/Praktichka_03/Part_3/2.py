from operator import truediv


while True:

    print ('enter 1 for convert dollar in hrivna')
    print ('enter 2 for convert hrivna in dollar')
    a = int (input ('enter your choice:'))
    b = float (input ('enter the amount of currency:'))
    
    if a == 1:
        print ('you\'ll get:', b*36.94,'uan')
    elif a == 2:
        print ('you\'llget:', b/36.94,'uan')
    else:
        print ('error')
    print ('want to contin')
    print ('yes or no')
    choice = input ('enter your choice:')
    if choice == 'yes':
        continue
    else:
        break


        
