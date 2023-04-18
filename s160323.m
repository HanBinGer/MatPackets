d = 0.0:0.01:4;
Xn = 0.6;
for i=1:1
    Xn = (Xn.*d.*(1-Xn));
end
scatter(d,Xn,15,'filled')
hold on
for i=1:500
    Xn = (Xn.*d.*(1-Xn));
    scatter(d,Xn,5,'filled')
end
hold off
%% 
for d =0:0.1:4
    Xn = 1:1000;
    Xn(1) = 0.1;
    hold on
    for i=2:1000
        Xn(i) = (Xn(i-1)*d*(1-Xn(i-1)));
    end
    scatter(1:1000,Xn,4,'filled')
end
hold off
%% 
% построение эволюты параболы
clear
% исходная кривая
t=-25:.1:25;
p=-5;
X=2*cos(t);
Y=3*sin(t); %X.^2./(2*p);
Yi=interp1(Y,1:length(Y));
Xi=interp1(X,1:length(X));
plot ( Xi, Yi, '-b');
hold on
n=length(Xi); %

Xs=diff(Xi)./2+Xi(1:n-1); % координаты центров между отрезками
Ys=diff(Yi)./2+Yi(1:n-1);


% уравнение нормали к точке кривой Xs Ys Yn=An*Xn+Bn
An=(Xi(1:end-1)-Xs)./(Yi(1:end-1)-Ys);
Bn=(Xs.*(Xi(1:end-1)-Xs)+Ys.*(Yi(1:end-1)-Ys))./(Yi(1:end-1)-Ys);

%вычисление центров кривизны
X0=diff(Bn)./diff(An);
Y0=-An(1:end-1).*X0+Bn(1:end-1);
h = animatedline('Color','r');
O = viscircles([X0(1) Y0(1)],sqrt((X0(1)-Xi(1))^2+(Y0(1)-Yi(1))^2));
%axis ([-50 50 -80 40])
for i=1:length(X0)
    delete(O)
    O = viscircles([X0(i) Y0(i)],sqrt((X0(i)-Xi(i))^2+(Y0(i)-Yi(i))^2));
    addpoints(h,X0(i),Y0(i));
    drawnow;
end
%plot (X0, Y0, 'r')



% проверка решения: эволюта параболы
% X01=-(Xi.^3)./(p.^2);
% Y01=3./2.*Xi.^2./p+p;
% 
% plot (X01, Y01, 'b')
