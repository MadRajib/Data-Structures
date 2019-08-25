function comp_op = bubbleSortOp(arr)
   n = length(arr)
   comp_op=0;
    for i = 1 : n
      noswap = true
        for j = 1:n-i 
            comp_op=comp_op+1
            if arr(j) > arr(j+1)
                temp =  arr(j+1);
                arr(j+1) = arr(j);
                arr(j) = temp;
                noswap = false
            end
        end
        if noswap
            break
        end
    end
    
end