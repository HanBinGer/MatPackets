x = 0:pi/100:4*pi;
set(gca, 'nextplot', 'replacechildren')
y = x;
[X,Y] = meshgrid(x,y);
z = 3*sin(X) + cos(Y);
h = surf(z);
axis tight
shading interp
colormap("parula")
zlim([-5 5])

for k = 0:pi/100:2*pi
    z = (sin(X)+cos(Y)).*sin(k);
    set(h, 'Zdata',z)
    drawnow
end