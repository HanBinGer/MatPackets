clear
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%A = randi(100,20,20);
%b = sort(eig(A));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 7;
M = diag(ones(n,1)*-2)+diag(ones(n-1,1),1)+diag(ones(n-1,1),-1)+diag([1],n-1)+diag([1],-n+1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% A = randi(100,8,8)
% m = max(A,[],1)
% max(A,[],2)
% max(m)
% [i,j] = find(A>70)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% fi = -pi:0.001:pi;
% ro = 2*sin(5*fi).^2;
% polar(fi,ro)

%%%%%%%%%%%%%%%%%%%%%%%%%%%

