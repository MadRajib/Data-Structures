def sort(A):
    f = -1
    l = len(A)
    i = 1
    while i < l:
        if A[i] == "r":
            f+=1
            A[i],A[f] = A[f],A[i]
        if A[i] =="w":
            l-=1
            A[i],A[l] = A[l],A[i]            
        i+=1
    print(A)

sort(["w","b","r","w","w","r","b"])


