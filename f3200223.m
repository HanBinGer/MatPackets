function [M] = f3200223(n,r)
M = false(n,n);
for i = 1:n
    for j = 1:n
        if ((floor((n/2-i)^2)+floor((n/2-j)^2))<=(r^2))
            M(i,j) = true;
        end
    end
end
end

