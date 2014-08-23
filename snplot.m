Time=[0:0.001:1];

Data0=[0    2.4		0.32	13.5	0.55	199 	-0.034];   %Refolding data at zero denaturant

N_ex_0=1 - (Data0(3)*exp(-Data0(2)*Time) + Data0(5)*exp(-Data0(4)*Time) + Data0(7)*exp(-Data0(6)*Time))/(Data0(3)+Data0(5)+Data0(7));
for i=1:6
    subplot(3,2,i)
semilogx(Time, N_ex_0,'k','LineWidth',3)
hold on
end

subplot(3,2,1)
fitPara_k=[13.56300	1.576800	484.970	0.0028531	216.940000	3.50450	1901.900000	985.710000];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I
semilogx(t,y(:,3),'r'); hold on %plot N by red color *
semilogx(t,y(:,4),'m'); hold on %plot I1x 
semilogx(t,y(:,5),'y'); hold on %plot I2x 

ylabel('Population')
axis([1e-3 1.1 -0.05 1.05])
title('PPOE_1 Fitting')

subplot(3,2,2)
fitPara_k=[56.80400	1.259800e-010	3.00790	0.051861	67.384000	7.642800e-012	16.674000	6.569900e-013];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_iup',Time,[1 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I1
semilogx(t,y(:,4),'r'); hold on %plot N by red color *
semilogx(t,y(:,3),'c'); hold on %plot I2 

axis([1e-3 1.1 -0.05 1.05])
title('IUP Fitting')


subplot(3,2,3)
fitPara_k=[118.00000	72.336000	154.050	0.0064184	53.370000	3.56790	3476.000000	248.980000];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I
semilogx(t,y(:,3),'r'); hold on %plot N by red color *
semilogx(t,y(:,4),'m'); hold on %plot I1x 
semilogx(t,y(:,5),'y'); hold on %plot I2x 

ylabel('Population')
axis([1e-3 1.1 -0.05 1.05])


subplot(3,2,4)
fitPara_k=[183.26000	0.0000043931	13.45100	0.00031324	116.890000	0.000040218	2.513500	0.012993];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_iup',Time,[1 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I1
semilogx(t,y(:,4),'r'); hold on %plot N by red color *
semilogx(t,y(:,3),'c'); hold on %plot I2 

axis([1e-3 1.1 -0.05 1.05])


subplot(3,2,5)
fitPara_k=[209.20000	56.957000	15.046	0.0026238	5.022300	3.47980	1831.000000	5425.600000];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I
semilogx(t,y(:,3),'r'); hold on %plot N by red color *
semilogx(t,y(:,4),'m'); hold on %plot I1x 
semilogx(t,y(:,5),'y'); hold on %plot I2x 
xlabel('Time (s)')
ylabel('Population')
axis([1e-3 1.1 -0.05 1.05])


subplot(3,2,6)
fitPara_k=[4.81060	0.433570	2.37940	1.724100e-008	10.669000	14.514000	153.620000	0.298270];
k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
[t,y] = ode15s('snase_folding_iup',Time,[1 0 0 0]); 
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I1
semilogx(t,y(:,4),'r'); hold on %plot N by red color *
semilogx(t,y(:,3),'c'); hold on %plot I2 
xlabel('Time (s)')

axis([1e-3 1.1 -0.05 1.05])
