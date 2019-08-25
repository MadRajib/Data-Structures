function comp = insertionSort(list)
    comp = 0
    for i = (2:numel(list))
 
        value = list(i);
        j = i - 1;
        comp= comp + 1
        while (j >= 1)
          comp= comp+1
          if (list(j) <= value)
                break
          end
          list(j+1) = list(j);
          j = j-1;
          
        end
        list(j+1) = value;
    end 
end 
