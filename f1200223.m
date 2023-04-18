function [O] = f1200223(N, M)
O = false(N,M);
k = true;
for i = 1:N
    b = k;
    for j = 1:M
        O(i,j) = b;
        b = ~b;
    end
 k = ~k;
end
end

