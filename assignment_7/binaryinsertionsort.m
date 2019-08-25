function comp = binaryinsertionsort(list)
    comp = 0
    for i = (2:numel(list))
 
        value = list(i);
        j = i - 1; 
        [index comp] = binarysearch(list,j,value,comp)
        while j >=index
            list(j+1) = list(j);
            j = j-1;
            %comp= comp + 1
        end
        list(j+1) = value;
    end 
end 

function [index comp] = binarysearch(A,ll,num, comp)
  left = 1;
  right = ll;
  flag = 0;
  while left <= right
      comp = comp + 1
      mid = ceil((left + right) / 2);
      
      comp = comp + 2
      if A(mid) == num
          index = mid;
          flag = 1;
          break;
      else if A(mid) > num
          right = mid - 1;
          else
              left = mid + 1;
          end
      end
  end
  comp = comp+1
  if flag == 0;
      index = left;
  end
end