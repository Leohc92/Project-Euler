%Sieve of Eratosthenes
MAX=2000000;
upper=sqrt(MAX);
sum=0;
%isPrime[i,1]=1 when i is a prime
isPrime=ones(MAX,1);
for i=2:MAX
    if isPrime(i,1)==1
        sum=sum+i;
        for j=2:floor(MAX/i)
           isPrime(j*i,1)=0; 
        end
    end
end



sum