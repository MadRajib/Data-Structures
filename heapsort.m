function comp = heapsort(x)
    comp = 0
    n = length(x);
    [x comp] = buildmaxheap(x,n,comp);

    heapsize = n;
    for i = n:-1:2
        % Put (n + 1 - i)th largest element in place
        x = swap(x,1,i);
        
        heapsize = heapsize - 1;
        [x comp] = maxheapify(x,1,heapsize,comp);
    end
end
function [x comp] = buildmaxheap(x,n,comp)
  for i = floor(n / 2):-1:1
      [x comp] = maxheapify(x,i,n,comp);
  end
end
function [x comp] = maxheapify(x,i,heapsize,comp)
    ll = 2 * i; % Note: In practice, use left bit shift
    rr = ll + 1; % Note: In practice, use left bit shift, then add 1 to LSB
    comp = comp + 1
    if ((ll <= heapsize) && (x(ll) > x(i)))
       comp = comp + 1 
        largest = ll;
    else
        largest = i;
    end
    comp = comp + 1
    if ((rr <= heapsize) && (x(rr) > x(largest)))
       comp = comp + 1 
       largest = rr;
    end
    comp = comp + 1
    if (largest ~= i)
        x = swap(x,i ,largest);
        [x comp] = maxheapify(x,largest,heapsize,comp);
    end
end
function x = swap(x,i,j)
  val = x(i);
  x(i) = x(j);
  x(j) = val;
end