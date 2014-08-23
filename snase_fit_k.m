
function f = snase_fit_k(x)

global Time
global N_ex_0
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10
global n


if(n==1)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);  k7=x(7);  k8=x(8);
    [t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
    z= y(:,3);
end
    
if (n==2)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);  k7=x(7);  k8=x(8); k9=x(9);  k10=x(10);  
    [t,y] = ode15s('snase_folding_ppoe2',Time,[1 0 0 0 0 0]); 
    z= y(:,4);
end

if(n==3)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);
    [t,y] = ode15s('snase_folding_ppoe3',Time,[1 0 0 0]); 
    z= y(:,3);
end

if(n==4)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);  k7=x(7);  k8=x(8);
    [t,y] = ode15s('snase_folding_iup',Time,[1 0 0 0]); 
    z= y(:,4);
end

if (n==5)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);  k7=x(7);  k8=x(8);
    [t,y] = ode15s('snase_folding_ppoe4',Time,[1 0 0 0 0]); 
    z= y(:,4);
end

if (n==6)
    k1=x(1);  k2=x(2);  k3=x(3);  k4=x(4); 
    k5=x(5);  k6=x(6);  k7=x(7);  k8=x(8); k9=x(9);  k10=x(10);  
    [t,y] = ode15s('snase_folding_ppoe5',Time,[1 0 0 0 0 0]); 
    z= y(:,4);
end


f=z'-N_ex_0;