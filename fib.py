#!/usr/bin/env python3


def fib(n: int, x: int, y: int):
        if n == 1:
                print(x+y)
        else:
                z = x + y
                print(z)
                fib(n-1,y,z)


if __name__ == '__main__':
        print("Calculate the Fibonacci Sequence")
        print("Enter Fib Number To Go Until:")
        n = input()
        try:
                n = int(n)
        except:
                print("Bad input")
                _ = input("Press <Enter> to end program")
                exit()

        print("\nThe Sequence:")
        print("1")
        print("1")
        fib(n,1,1)
