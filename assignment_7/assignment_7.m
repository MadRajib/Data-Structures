noelt=zeros(1,10);
nocp=zeros(1,10);
nocp_1=zeros(1,10);
nocp_2=zeros(1,10);
k=1;
for n=10:10:100
    noelt(k)=n
    cmp= 0
    cmp_1 = 0
    cmp_2 = 0
    for i=1:10
      a=round(rand(1,n)*100)
      cmp= cmp + binaryinsertionsort(a)
      cmp_1 = cmp_1 + quicksort(a)
      cmp_2 = cmp_2 + insertionSort(a)
    end
    
    nocp(k)=cmp/10
    nocp_1(k) = cmp_1/10
    nocp_2(k) = cmp_2/10
    k=k+1
endfor


plot(noelt,nocp,noelt,nocp_1,noelt,nocp_2)
xlabel('#elements')
ylabel('#comparisons')
legend('binaryInsertionSort',"quickSort","insertionSort")