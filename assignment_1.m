noelt=zeros(1,200);
p=zeros(1,200);
k=1;
for i = 10:500:100000
    tosses = randi([0,1],[i,1]);
    noelt(k) = i;
    a = 0;
    b = 0;
    for j = 1:i
        if tosses(j) == 0
            a = a + 1;
        else 
            b =b + 1;
        endif
    endfor
    p(k) = a/i;
    k = k+ 1;
endfor

plot(noelt,p);
xlabel("#Tosses");
ylabel("Probability of Geting head");
grid on;
    