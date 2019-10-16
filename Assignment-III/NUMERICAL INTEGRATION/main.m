N = 10000;
N1 = 100;
a = 0; b = 2;

k = 1;
for i=1:N1
  integral = 0.0;
  for i=1:N
    x = (b-a)*rand +a;
    integral+=func(x);
  end
  %integral = ((b-a)/N)*integral;
  p(k) = ((b-a)/N)*integral;
  k = k+1;
end

hist(p,30);

