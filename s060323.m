% ДНК
% t = -2*pi:0.05:2*pi;
% x = cos(z);
% y = sin(z);
% x1 = cos(pi+z);
% y1 = sin(pi+z);
% z = t; 
% plot3(x,y,z,x1,y1,z);
% grid on
% hold on
% for i = -2*pi:pi/3:2*pi
%     plot3([cos(i), cos(i+pi)],[sin(i),sin(i+pi)],[i,i]);
% end
r = 4;
f = sqrt(r^2-1);
p1_1 = [0,1,f];
p1_2 = [0,-1,-f];
p1_3 = [0,1,-f];
p1_4 = [0,-1,f];
p2_1 = [1,f,0];
p2_2 = [-1,-f,0];
p2_3 = [1,-f,0];
p2_4 = [-1,f,0];
p3_1 = [f,0,1];
p3_2 = [-f,0,-1];
p3_3 = [f,0,-1];
p3_4 = [-f,0,1];
points = {p1_1,p1_2,p1_3,p1_4,p2_1,p2_2,p2_3,p2_4,p3_1,p3_2,p3_3,p3_4};
C = nchoosek(points,3);
k = size(C);
for i = 1:k(1,1)
    x = [C{i,1}(1),C{i,2}(1),C{i,3}(1)];
    y = [C{i,1}(2),C{i,2}(2),C{i,3}(2)];
    z = [C{i,1}(3),C{i,2}(3),C{i,3}(3)];
    % x = [p1(1) p2(1) p3(1)];
    % y = [p1(2) p2(2) p3(2)];
    % z = [p1(3) p2(3) p3(3)];
    fill3(x, y, z, rand(size(C{i,1})));
    hold on
end
[X,Y,Z] = sphere;
X2 = X * r;
Y2 = Y * r;
Z2 = Z * r;

mesh(X2,Y2,Z2)
hidden off
axis equal