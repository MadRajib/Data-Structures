noelt=zeros(1,10);
nocp=zeros(1,10);
nocp_1=zeros(1,10);
k=1;
for n=10:10:100
    noelt(k)=n;
    
    av_cp_1 = 0;
    av_cp_2 = 0;
    for i=1:10
        a=round(rand(1,n)*100)
        av_cp_1 = av_cp_1 + twowayinsertionsort(a)
        av_cp_2 = av_cp_2 + quicksort(a)
    end
    
    nocp(k) = av_cp_1 / 10;
    nocp_1(k) = av_cp_2 / 10;
       
    k=k+1
end


plot(noelt,nocp,noelt,nocp_1)
xlabel('#elements')
ylabel('#comparisons')
legend('Two way insertion sort','quicksort')


grid on

