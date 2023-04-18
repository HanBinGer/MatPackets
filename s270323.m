clear;
t=-8*pi:0.01*pi:8*pi;

X = @(t) t;
Y = @(t) 2.*sin(t);
 
x = X(t);
y = Y(t);
N = 10;
r = 0.7;
l = r;
f = figure;
h = axes;
p = plot(h,x,y);
axis([-5*pi 5*pi -5*pi 5*pi]);

F=@(u, x0, y0) (x0-X(u))^2+(y0-Y(u))^2-4*r^2;

s = ones(1,N).*r;
c = ones(N,2);

for i=1:length(x)
    
    c(1,:) = [x(i), y(i)];
    for j = 2:N
        temp = fzero(@(u) F(u,c(j-1,1),c(j-1,2)), c(j-1,1)+r);
        c(j,:) = [X(temp), Y(temp)];
    end
    O = viscircles(h,c,s);
    drawnow
    delete(O);
end