% fugure
% [fi,psi]=meshgrid(0:0.05:2*pi+1,-pi:0.05:pi+1);
% x=(2+0.5.*cos(psi)).*cos(fi);
% y=(2+0.5.*cos(psi)).*sin(fi);
% z=0.5.*sin(psi);
% plot3(x,y,z)

clear
figure

[X,Y]=meshgrid(-pi:0.05:pi, -pi:0.05:pi);
Z=20-X.^2-Y.^2;
surf(X,Y,Z);

hold on
Zdx=0;
Zdy=2;
z0=19;


t=-50:0.5:0;
x=0*t;
y=-1+Zdx*t;
z=19-t;
[A,B]=meshgrid(x,y);
line(A,B,z);