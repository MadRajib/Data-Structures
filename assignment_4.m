noelt=zeros(1,50);
nocp_1=zeros(1,50);
nocp_2 = zeros(1,50);
k=1;
for n=10:20:1000
    noelt(k)=n;
    
    av_cp_1 = 0;
    av_cp_2 = 0;
    for i=1:10
        a=round(rand(1,n)*100)
        
        av_cp_1 = av_cp_1 + quicksort(a)
        av_cp_1
        av_cp_2 = av_cp_2 + quicksort_1(a)
        av_cp_2
    endfor
    
    nocp_1(k) = av_cp_1 / 10;
    nocp_2(k) = av_cp_2 / 10;
    
       
    k=k+1
endfor


plot(noelt,nocp_1,noelt,nocp_2)
xlabel('#elements')
ylabel('#comparisons')
legend('quicksort','quicksort insertion')


grid on