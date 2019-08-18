function comp = selectionSort(list)
    comp = 0
    listSize = numel(list);
  
    for i = (1:listSize-1)
 
        minElem = list(i);
        minIndex = i;
        for j = (i:listSize)
          comp = comp + 1
            if list(j) <= minElem
                minElem = list(j);
                minIndex = j;
            endif                            
        endfor
 
        if i ~= minIndex
            list([minIndex i]) = list([i minIndex]); %Swap
        endif
 
    endfor %for
endfunction %selectionSort