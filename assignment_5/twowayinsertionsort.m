function comp = twowayinsertionsort(x)
    comp = 0;
    n = length(x);
    a = zeros(1,2*n+1);
    for i=1:n
        a(n+i) = x(i);
    end
    l = n+1;
    h = n+1;
    disp(a);
    for i=n+2:2*n
        comp = comp +1;
        if a(h) <= a(i)
            h = h + 1;
            a(h) = a(i);
            comp = comp +1;
            if h ~= i
                a(i) = 0;
            end
        elseif a(l) >= a(i)
            comp = comp +1;
            l = l - 1;
            a(l) = a(i);
            a(i) = 0;
        else
            j = h - 1
            
            while a(i) < a(j)
                comp = comp +1;
                j = j-1
            end
            lc = j-l +1;
            rc = h-j;
            comp = comp +1;
            if rc < lc
                h = h+1
                for k=h:-1:j+1
                    a(k) = a(k-1);
                end
                a(j+1) = a(i);
                a(i) = 0;
            end
        end
    end
        
end