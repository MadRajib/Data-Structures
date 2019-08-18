function comp = quicksort_1(x)
    comp = 0
    kk = 12; % Insertion sort threshold, kk >= 1
    n = length(x);
    [x comp] = quicksorti(x,1,n,kk,comp);
end
function [x comp] = quicksorti(x,ll,uu,kk,comp)
    [x mm comp] = partition(x,ll,uu,comp);
    comp = comp + 1;
    
    if ((mm - ll) <= kk)
        [x comp] = insertionsorti(x,ll,mm - 1,comp);
    else
        [x comp] = quicksorti(x,ll,mm - 1,kk,comp);
    end

    comp = comp +  1;
    if ((uu - mm) <= kk)
        [x comp] = insertionsorti(x,mm + 1,uu,comp);
    else
        [x comp] = quicksorti(x,mm + 1,uu,kk,comp);
    end
end
function [x mm comp] = partition(x,ll,uu,comp)
  pp = 1;
  x = swap(x,ll,pp);
  mm = ll;
  
  for j = (ll + 1):uu
    comp = comp + 1;
      if (x(j) < x(ll))
          mm = mm + 1;
          x = swap(x,mm,j);
      end
  end
  x = swap(x,ll,mm);
end
function [x comp] = insertionsorti(x,ll,uu,comp)
    for j = (ll + 1):uu
        pivot = x(j);
        i = j;
        comp = comp +1
        while ((i > ll) && (x(i - 1) > pivot))
            comp = comp + 1;
            x(i) = x(i - 1);
            i = i - 1;
        end
        x(i) = pivot;
    end
end
function x = swap(x,i,j)
  val = x(i);
  x(i) = x(j);
  x(j) = val;
end