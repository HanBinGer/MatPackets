clear
an = roots([1 0 0 -1]);
syms f(z);
f(z) = z^3 - 1;
df=diff(f);

x = linspace(-2, 2, 500);
y = linspace(-2,2,500);
[X,Y] = meshgrid(x,y);
K = complex(X,Y);

x0 = sym(K,'d');
x=x0-f(x0)/df(x0);
%while(abs(x-x0)>1e-16)
for i = 1:60
    x0=x;
    x=x0-f(x0)/df(x0);
end
x