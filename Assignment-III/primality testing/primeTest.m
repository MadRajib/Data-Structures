% Runs primality test for 'iter' number of times
% using Fermat's little theorem!.
% refer "https://en.wikipedia.org/wiki/Fermat%27s_little_theorem"
function prob = primeTest(p,iter)
  i = iter;
  pCount = 0;
  while(i)
    a = randi(p);
    if (modular_power(a,p-1,p) == 1)
      pCount++;
    end
    i--;
  end
  prob = pCount/iter;
end

% modular exponential function
% returns (b^e mod m)
function result = modular_power(b,e,m)
  result = 1;
  while e > 0
    if mod(e,2) == 1
      result = mod((result*b),m);
    end
    e = bitshift(e,-1);
    b =mod((b*b),m);
  end
end