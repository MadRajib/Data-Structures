# If there is a majority element, the probability of picking a minority element is less than 0.5.
# If we go on calling the procedure Majority ( ), the chance of missing the majority element
# goes on reducing geometrically. If we use Majority ( ) ten times, the probability of missing
# the majority element if there is a majority element is less than (0.5)^10 = 0.00097.
import random

def majority(A):
    """
    input : array 
    output : True, majority_element if present else
    output : None, None
    
    Info: majority finds out majority of an element if there is one.!
    """
    N = len(A)
    choice  = A[random.randint(0,N-1)]
    count = 0
    
    for i in range(N):
        if A[i] == choice:
            count += 1
    if count > N/2 :
        return True ,A[choice]
    
    return None,None


if __name__ == "__main__":
    A = [1,2,3,3,1,1,3,3,4,5,3,3,6,6,3,3,7,8,3,3,3,9,0,3,1,3,3]
    k = 10
    flg = False
    R = E = None
    p = 1
    for i in range(k):
        R,E = majority(A)
        if R is not None:
            flg = True
            break
        p *=0.5

    if flg:
        print("Majority element is :",E)
        print("Probability of missing it :",p)
    else:
        print("No majority Element")