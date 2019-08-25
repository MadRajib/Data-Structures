noelt=zeros(1,10);
nocp=zeros(1,10);
k=1;
for n=50:10:500
    noelt(k)=n
    cmp =0
    for i=1:10
      a=round(rand(1,n)*100)
      cmp= cmp + quickselect(a,3)
    end
    
    nocp(k)=cmp/10
         
    k=k+1
end


plot(noelt,nocp)
xlabel('#elements')
ylabel('#comparisons')
legend('bubbleSort')
