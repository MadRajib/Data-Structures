noelt=zeros(1,10);
nocp_1=zeros(1,10);
nocp_2=zeros(1,10);
nocp_3=zeros(1,10);
k=1;
for n=10:10:100
    noelt(k)=n
    
    bs_av_cp_1 = 0
    bs_av_cp_2 = 0
    bs_av_cp_3 = 0
    bs_av_cp_4 = 0
    
    ss_av_cp_1 = 0
    ss_av_cp_2 = 0
    ss_av_cp_3 = 0
    ss_av_cp_4 = 0
    
    is_av_cp_1 = 0
    is_av_cp_2 = 0
    is_av_cp_3 = 0
    is_av_cp_4 = 0
    
    qs_av_cp_1 = 0
    qs_av_cp_2 = 0
    qs_av_cp_3 = 0
    qs_av_cp_4 = 0
    
    hs_av_cp_1 = 0
    hs_av_cp_2 = 0
    hs_av_cp_3 = 0
    hs_av_cp_4 = 0
    for i=1:10
        r_data=round(rand(1,n)*100)
        ns_data = sort(r_data)
        rvs_data = flip(ns_data)
        
        
        f_index = randi(n)
        s_index = randi(n)
        
        temp = ns_data(f_index)
        ns_data(f_index) = ns_data(s_index)
        ns_data(s_index) = temp
        
        hrs_data = randi([1,5],[1,n])
        
        
        bs_av_cp_1 = bs_av_cp_1 + bubbleSort(r_data)
        bs_av_cp_2 = bs_av_cp_2 + bubbleSort(rvs_data)
        bs_av_cp_3 = bs_av_cp_3 + bubbleSort(ns_data)
        bs_av_cp_4 = bs_av_cp_4 + bubbleSort(hrs_data)
        
        ss_av_cp_1 = ss_av_cp_1 + selectionSort(r_data)
        ss_av_cp_2 = ss_av_cp_2 + selectionSort(rvs_data)
        ss_av_cp_3 = ss_av_cp_3 + selectionSort(ns_data)
        ss_av_cp_4 = ss_av_cp_4 + selectionSort(hrs_data)
        
        is_av_cp_1 = is_av_cp_1 + insertionSort(r_data)
        is_av_cp_2 = is_av_cp_2 + insertionSort(rvs_data)
        is_av_cp_3 = is_av_cp_3 + insertionSort(ns_data)
        is_av_cp_4 = is_av_cp_4 + insertionSort(hrs_data)
        
        qs_av_cp_1 = qs_av_cp_1 + quicksort(r_data)
        qs_av_cp_2 = qs_av_cp_2 + quicksort(rvs_data)
        qs_av_cp_3 = qs_av_cp_3 + quicksort(ns_data)
        qs_av_cp_4 = qs_av_cp_4 + quicksort(hrs_data)
        
        hs_av_cp_1 = hs_av_cp_1 + heapsort(r_data)
        hs_av_cp_2 = hs_av_cp_2 + heapsort(rvs_data)
        hs_av_cp_3 = hs_av_cp_3 + heapsort(ns_data)
        hs_av_cp_4 = hs_av_cp_4 + heapsort(hrs_data)
        
    end
    
    
    
    
    bs_nocp_1(k)= bs_av_cp_1 /10
    bs_nocp_2(k)= bs_av_cp_2 /10
    bs_nocp_3(k)= bs_av_cp_3 /10
    bs_nocp_4(k)= bs_av_cp_4 /10
    
    
    is_nocp_1(k)=is_av_cp_1 /10
    is_nocp_2(k)=is_av_cp_2 /10
    is_nocp_3(k)=is_av_cp_3 /10
    is_nocp_4(k)=is_av_cp_4 /10
    
    ss_nocp_1(k)=ss_av_cp_1 /10
    ss_nocp_2(k)=ss_av_cp_2 /10
    ss_nocp_3(k)=ss_av_cp_3 /10
    ss_nocp_4(k)=ss_av_cp_4 /10
    
    qs_nocp_1(k)=qs_av_cp_1 /10
    qs_nocp_2(k)=qs_av_cp_2 /10
    qs_nocp_3(k)=qs_av_cp_3 /10
    qs_nocp_4(k)=qs_av_cp_4 /10
    
    hs_nocp_1(k)=hs_av_cp_1 /10
    hs_nocp_2(k)=hs_av_cp_2 /10
    hs_nocp_3(k)=hs_av_cp_3 /10
    hs_nocp_4(k)=hs_av_cp_4 /10
    

    
    k=k+1
end


figure(1)
plot(noelt,bs_nocp_1,noelt,ss_nocp_1,noelt,is_nocp_1,noelt,qs_nocp_1,noelt,hs_nocp_1)
title("RANDOM DATA")
xlabel('#elements')
ylabel('#comparisons')
legend('bubble sort','selection sort', 'insertion  sort','quick sort','heap sort')
grid on

figure(2)
plot(noelt,bs_nocp_2,noelt,ss_nocp_2,noelt,is_nocp_2,noelt,qs_nocp_2,noelt,hs_nocp_2)
title("REVERSE DATA")
xlabel('#elements')
ylabel('#comparisons')
legend('bubble sort','selection sort', 'insertion  sort','quick sort','heap sort')
grid on

figure(3)
plot(noelt,bs_nocp_3,noelt,ss_nocp_3,noelt,is_nocp_3,noelt,qs_nocp_3,noelt,hs_nocp_3)
title("NEARLY SORTED DATA")
xlabel('#elements')
ylabel('#comparisons')
legend('bubble sort','selection sort', 'insertion  sort','quick sort','heap sort')
grid on

figure(4)
plot(noelt,bs_nocp_4,noelt,ss_nocp_4,noelt,is_nocp_4,noelt,qs_nocp_4,noelt,hs_nocp_4)
title("HIGHLY DATA")
xlabel('#elements')
ylabel('#comparisons')
legend('bubble sort','selection sort', 'insertion  sort','quick sort','heap sort')
grid on

