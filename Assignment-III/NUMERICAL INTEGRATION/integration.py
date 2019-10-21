import random
from math import sqrt
import matplotlib.pyplot as plt

def fun(x):
    return sqrt(4-x**2)


if __name__ == "__main__":
    a = 0
    b = 2
    N = 10000
    N1 = 100
    P = []
    for i in range(N1):
        integral = 0
        for i in range(N):
            x = random.uniform(a,b)
            integral+=fun(x)

        P.append(float((b-a)/N)*integral)
plt.hist(P,bins=30)
plt.show()
