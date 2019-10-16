noelt = zeros(1,100);
p = zeros(1,100);

k = 1; % iteration variable
p_specimen = 7877; % Prime number to test
for i=10:10:1000
   noelt(k) = i;
   p(k) = primeTest(p_specimen,i); % return probability of primality
   k = k +1;    
end

% to squeze the curve to the middle of the plot.
% add the fraction to the last data slot.
p(101) = 2 -min(p(p>0));
noelt(101)=1000;

%plot the data set
plot(noelt,p);
xlabel("Number of Iterations");
ylabel("Prime Probability");
grid on;