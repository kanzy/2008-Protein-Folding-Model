
[t,y] = ode15s('folding',[0:0.001:1],[1 0 0 0 0]); 
semilogx(t,y(:,3),'r')