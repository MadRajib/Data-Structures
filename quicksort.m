function comp = quicksort(x)
  comp = 0
  n = length(x);
  [x comp] = quicksorti(x,1,n,comp);
end

function [x comp] = quicksorti(x,ll,uu,comp)
  comp = comp + 1
  if (ll < uu )
    [x mm comp] = partition(x,ll,uu,comp);
    [x comp] = quicksorti(x,ll,mm - 1,comp);
    [x comp] = quicksorti(x,mm + 1,uu,comp);
  endif
end

function [x mm comp] = partition(x,ll,uu,comp)
  pp = 1

  x = swap(x,ll,pp);
  mm = ll;
  for j = (ll + 1):uu
      comp = comp + 1
      if (x(j) < x(ll))
          mm = mm + 1;
          x = swap(x,mm,j);
      end
  end
  x = swap(x,ll,mm);
end

function x = swap(x,i,j)
  val = x(i);
  x(i) = x(j);
  x(j) = val;
end