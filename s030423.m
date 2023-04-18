clear;
t=-3:0.1:3;
x0 = 2; y0 = 0; Ax = 5; Ay = -3;
X = @(t) x0 + Ax*t;
Y = @(t) y0 + Ay*t;

rectDot1 = [-3, 3];
rectDot2 = [3, -3];

N = 10;
r = 0.7;

x = X(t);
y = Y(t);
p = plot(x,y);
axis([rectDot1(1) rectDot2(1) rectDot2(2) rectDot1(2)]);
%%
clear;
syms y(t);
DE = diff(y,t) - y == 0
sol=dsolve(DE)