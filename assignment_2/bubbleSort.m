function comp = bubbleSort(arr)
   n = length(arr)
   comp=0;
    for i = 1 : n
        for j = 1:n-i 
            comp=comp+1
            if arr(j) > arr(j+1)
                temp =  arr(j+1);
                arr(j+1) = arr(j);
                arr(j) = temp;
            end
        end
    end
    
end


