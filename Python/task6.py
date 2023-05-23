def isPrime(n):
    for i in range(2,n//2+1):
        if n % i == 0:
            return False
    else:
        return True
n = 11

if(isPrime(n)):
    print('Моє число ',n,'є простим' )
else:
    print('Моє число ',n,'є складне' )
