function dx=Suspencion(t, x)
m1=290;
m2=59;
b1=1000;
k1=16182;
k2=19000;
f=0;
z = 0.05*sin(pi*20*t);
%---------------------%
dx=zeros(4,1);
%---------------------%
M = [m1 0; 0 m2];
C = [b1 -b1; -b1 b1];
K = [k1 -k1; -k1 (k1+k2)];
U = [1 0; -1 k2];
%---------------------%
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = M\(-C*[x(3);x(4)]-K*[x(1); x(2)] + U*[f; z]);