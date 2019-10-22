import random
import matplotlib.pyplot as plt


# Simple rule
def ptesting(N,k):
    for i in range(k):
        a = random.randint(1,N-1)
        if N % a == 0:
            return False
    return True    


# 2nd approach using fermet little theorem
def mod_exp(b,e,m):
    ret = 1
    while e> 0 :
        if e % 2 == 1:
            ret = (ret*b)%m
        e = e>> 1
        b = (b*b)%m
    return ret

def primalitiyTest(p):

    a = random.randint(1,p)
    ret = mod_exp(a,p-1,p)
    if ret == 1:
        return True
    return False


if __name__ == "__main__":
    probs = []
    for iterations in range(10,1000,10):
        pcount = 0
        for i in range(iterations):
            # ret = primalitiyTest(157)
            ret = ptesting(157,10)
            if ret:
                pcount+=1

        probs.append((float(pcount)/iterations))

    # print(probs[:90])
        

plt.plot(probs)
plt.ylabel('some numbers')
plt.show()