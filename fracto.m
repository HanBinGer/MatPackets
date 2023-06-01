function fracto(coeff, left, right, NOx, NOy)
res = roots(coeff);

f = @(z) z.^3 - 1;
eps = 1e-3;
[X, Y] = meshgrid(linspace(left(1),right(1),NOx), linspace(right(2),left(2),NOy));
epsilon = 1e-6;
x0 =  X + Y*1i;
x1 = x0 - f(x0) ./ ((f(x0 + epsilon) - f(x0)) ./ epsilon);
for i=0:30
    x1 = x1 - f(x1) ./ ((f(x1 + epsilon) - f(x1)) ./ epsilon);
end
zn = x1;
Z1 = abs(zn - res(1)) < eps;
Z2 = abs(zn - res(2)) < eps;
Z3 = abs(zn - res(3)) < eps;
Z4 = ~(Z1 + Z2 + Z3);
Z = Z1 + 2*Z2 + 3*Z3 + 4*Z4;

map = [1 0 0; 0 1 0; 0 0 1; 0 0 0];
colormap(map);

image([left(1),right(1)], [right(2),left(2)], Z);
end