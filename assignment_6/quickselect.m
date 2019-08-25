function comp = quickselect(A,k)
  comp = 0
  [elem comp] = iquickselect(A,k,comp)
end

function [elem comp] = iquickselect(A,k,comp)
  n = length(A)
  r = randi(n)
  pv = A(r)
  A1 = []
  A2 = []
  # split into a pile A1 of small elements and A2 of big elements
  for i = 1:n
    comp = comp +2
    if A(i) < pv
      A1 = [A1 A(i)]
    elseif A(i) > pv
      A2 = [A2 A(i)]
    else
      # do nothing
    end
    
  end
  comp = comp + 2
  if k <= length(A1)
    # it's in the pile of small elements
    [elem comp] = iquickselect(A1,k,comp)
  elseif k > length(A) - length(A2)
    # it's in the pile of big elements
    [elem comp] = iquickselect(A2, k - (length(A) - length(A2)),comp)
  else
    # it's equal to the pivot
    elem = pv
  end
end