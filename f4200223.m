function [M] = f4200223(n)
M = zeros(n);
j = 1;
k = 1;
for i =1:(n*2-1)
    M=M+diag(j:j+k,n);
    j = j+k;
    if k<n 
        k=k+1;
    else
        k=k-1;
    end
end
end

