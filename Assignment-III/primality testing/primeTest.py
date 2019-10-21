import random
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
            if primalitiyTest(7877):
                pcount+=1

        probs.append((float(pcount)/iterations))

    print(probs[:90])
        

