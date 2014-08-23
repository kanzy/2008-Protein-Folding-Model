
k=[15.7  0.58 465   3e-3 262   3.58 3109  909];

k1=k(1); k2=k(2); k3=k(3); k4=k(4);
k5=k(5); k6=k(6); k7=k(7); k8=k(8);

Q=[-k1   k2             0    0    0
    k1 -(k2+k3+k5+k7)  k4   k6   k8
    0       k3        -k4    0    0
    0          k5       0  -k6    0
    0             k7    0    0  -k8];

[V,D]=eig(Q)

n0=[1 0 0 0 0]'

m=V^-1*n0
for j=1:5
    A(j)=V(1,j)*m(j);
    lamda(j)=D(j,j);
end
A
lamda

Time=0:0.001:1;
[t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
semilogx(t,y(:,3),'k','LineWidth',2); hold on %plot N

z=A(1)*exp(lamda(1)*Time)+A(2)*exp(lamda(2)*Time)+A(3)*exp(lamda(3)*Time)+A(4)*exp(lamda(4)*Time)+A(5)*exp(lamda(5)*Time);
semilogx(Time,z,'r'); hold on

w=(0.32*exp(-2.4*Time)+0.55*exp(-13.5*Time)-0.034*exp(-199*Time));
semilogx(Time,w,'g'); 

				 	







