function [M] = f2200223(a, b)
    M = false(a,b);
    for i = 2:2:b
        M(:,i)=repelem(1,a);
    end
end

