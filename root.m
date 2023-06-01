clear;
syms f(x);
f(x) = 1 + (1 + sin(x) - cos(x))^2 - (sin (2*x) - cos(2*x) - 0.2)^2;
%fplot(f,[-3 3])
xx = -3:0.1:3;
fx = matlabFunction(f);
plot(xx, fx(xx))

df=diff(f);
simplify(solve(f,x));
[x0, y0] = ginput(1);
x=double(x0)-double(f(x0))/double(df(x0));
while((x-x0)>1e-16)
 x0=x;
 x=double(x0)-double(f(x0))/double(df(x0));
end
x