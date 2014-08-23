%% snase.m 2008-01-18: 

clear

global Time
global N_ex_0
global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10
global n


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% generate "exp" data from fitted Rates/Norm-Amp //2008-01-17 Sabrina's
%% DATA_FOR_KRISHNA.XLS:

Time=[0:0.001:1];

Data0=[0    2.4		0.32	13.5	0.55	199 	-0.034];   %Refolding data at zero denaturant

N_ex_0=1 - (Data0(3)*exp(-Data0(2)*Time) + Data0(5)*exp(-Data0(4)*Time) + Data0(7)*exp(-Data0(6)*Time))/(Data0(3)+Data0(5)+Data0(7));
semilogx(Time, N_ex_0,'k','LineWidth',3)
hold on


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%fitting to SNase_PPOE_1 model:
% n=1;
% 
% %choose initial values for fitting:
% inipara_k=[15.7 0.58 465 3e-3 262 3.58 3109 909];
% for i=1:8
%     inipara_k(i)=inipara_k(i)*10^random('Normal',0,1);
% end
% 
% lowBd=[0 0 0 0 0 0 0 0];
% uppBd=[Inf Inf Inf Inf Inf Inf Inf Inf];
% options=optimset('MaxIter',100);
% [fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);
% 
% k_ppoe1=fitPara_k %fitted k1,k2,..,k8
% 
% %%plot fitted N & U, Is curves:
% k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
% k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
% [t,y] = ode15s('snase_folding_ppoe1',Time,[1 0 0 0 0]); 
% semilogx(t,y(:,1),'b'); hold on %plot U
% semilogx(t,y(:,2),'g'); hold on %plot I
% semilogx(t,y(:,3),'r'); hold on %plot N by red color *
% semilogx(t,y(:,4),'m'); hold on %plot I1x 
% semilogx(t,y(:,5),'y'); hold on %plot I2x 
% xlabel('Time (s)')
% ylabel('Population')
% axis([1e-3 1.1 -0.05 1.05])
% title('PPOE_1 Fitting')

% 
% 
% inipara_m=[-2 1 -2 1 -1 0 0 0];
% 
% lowBd=[-5 -5 -5 -5 -5 -5 -5 -5];
% uppBd=[5 5 5 5 5 5 5 5];
% options=optimset('MaxIter',50);
% [fitPara_m,r1_m,r2_m,exitFlag_m,output_m]=lsqnonlin(@snase_fit_m,inipara_m,lowBd,uppBd,options,k_ppoe1);
% 
% m_ppoe1=fitPara_m %fitted m1,m2,...m8
% 
% 
% 
% 





% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%fitting to SNase_PPOE_2 model:
n=2;
inipara_k=[209.830	23.7970	7340.40	0.00002078	49.741	0.0018643	3322.900	3.49160	2446.00000	924.22];

% for i=1:8
%     inipara_k(i)=inipara_k(i)*10^random('Normal',0,1);
% %     inipara_k(i)=normrnd(inipara_k(i), inipara_k(i));
% %     if(inipara_k(i)<=0) inipara_k(i)=1e-5; end
% end

lowBd=[0 0 0 0 0 0 0 0 0 0];
uppBd=[Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
options=optimset('MaxIter',100);
[fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);

k_ppoe2=fitPara_k %fitted k1,k2,..,k9,k10

k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); k5=fitPara_k(5);
k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);  k9=fitPara_k(9); k10=fitPara_k(10);
[t,y] = ode15s('snase_folding_ppoe2',Time,[1 0 0 0 0 0]); 
% subplot(2,2,2)
semilogx(t,y(:,1),'b'); hold on %plot U
semilogx(t,y(:,2),'g'); hold on %plot I1
semilogx(t,y(:,3),'g'); hold on %plot I2 
semilogx(t,y(:,4),'r'); hold on %plot N by red color * 
semilogx(t,y(:,5),'m'); hold on %plot I1x 
semilogx(t,y(:,6),'y'); hold on %plot I1x 
xlabel('Time (s)')
ylabel('Population')
axis([1e-3 1 -0.05 1.05])
title('PPOE_2 Fitting')

% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%fitting to SNase_PPOE_3 model:
% n=3;
% inipara_k=[15 1 500 1 200 5];
% 
% lowBd=[0 0 0 0 0 0];
% uppBd=[Inf Inf Inf Inf Inf Inf];
% options=optimset('MaxIter',75);
% [fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);
% 
% k_ppoe3=fitPara_k %fitted k1,k2,..,k8
% 
% k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
% k5=fitPara_k(5);  k6=fitPara_k(6); 
% [t,y] = ode15s('snase_folding_ppoe3',Time,[1 0 0 0]); 
% subplot(2,2,3)
% semilogx(t,y(:,1),'b'); hold on %plot U
% semilogx(t,y(:,2),'g'); hold on %plot I
% semilogx(t,y(:,3),'r'); hold on %plot N by red color *
% semilogx(t,y(:,4),'m'); hold on %plot Ix 
% xlabel('Time (s)')
% ylabel('Population')
% axis([1e-3 1 -0.05 1.05])
% title('PPOE_3 Fitting')
% 
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%fitting to SNase_IUP model:
% n=4;
% inipara_k=[133.0400	0.000056065	13.7820	7.399100e-009	83.9190	0.00010986	2.46170	0.0049385];
% 
% % for i=1:8
% %     inipara_k(i)=inipara_k(i)*10^random('Normal',0,1);
% % end
% 
% lowBd=[0 0 0 0 0 0 0 0];
% uppBd=[Inf Inf Inf Inf Inf Inf Inf Inf];
% options=optimset('MaxIter',100);
% [fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);
% 
% k_iup=fitPara_k %fitted k1,k2,..,k8
% 
% k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); 
% k5=fitPara_k(5);  k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
% [t,y] = ode15s('snase_folding_iup',Time,[1 0 0 0]); 
% % subplot(2,2,4)
% semilogx(t,y(:,1),'b'); hold on %plot U
% semilogx(t,y(:,2),'g'); hold on %plot I1
% semilogx(t,y(:,4),'r'); hold on %plot N by red color *
% semilogx(t,y(:,3),'c'); hold on %plot I2 
% xlabel('Time (s)')
% ylabel('Population')
% axis([1e-3 1.1 -0.05 1.05])
% title('IUP Fitting')





% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%fitting to SNase_PPOE_4 model:
% n=5;
% inipara_k=[100 100 100 100 100 100 100 100];
% 
% for i=1:8
%     inipara_k(i)=inipara_k(i)*10^random('Normal',0,1);
% %     inipara_k(i)=normrnd(inipara_k(i), inipara_k(i));
% %     if(inipara_k(i)<=0) inipara_k(i)=1e-5; end
% end
% 
% lowBd=[0 0 0 0 0 0 0 0];
% uppBd=[Inf Inf Inf Inf Inf Inf Inf Inf];
% options=optimset('MaxIter',100);
% [fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);
% 
% k_ppoe4=fitPara_k %fitted k1,k2,..,k9,k10
% 
% k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); k5=fitPara_k(5);
% k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);
% [t,y] = ode15s('snase_folding_ppoe4',Time,[1 0 0 0 0]); 
% % subplot(2,2,2)
% semilogx(t,y(:,1),'b'); hold on %plot U
% semilogx(t,y(:,2),'g'); hold on %plot I1
% semilogx(t,y(:,3),'y'); hold on %plot I2 
% semilogx(t,y(:,4),'r'); hold on %plot N by red color * 
% semilogx(t,y(:,5),'c'); hold on %plot I3 
% xlabel('Time (s)')
% ylabel('Population')
% axis([1e-3 1 -0.05 1.05])
% title('PPOE_4 Fitting')




% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%fitting to SNase_PPOE_5 model:
% n=6;
% inipara_k=[10 10 10 10 10 10 10 10 10 10];
% 
% for i=1:10
%     inipara_k(i)=inipara_k(i)*10^random('Normal',0,1);
% %     inipara_k(i)=normrnd(inipara_k(i), inipara_k(i));
% %     if(inipara_k(i)<=0) inipara_k(i)=1e-5; end
% end
% 
% lowBd=[0 0 0 0 0 0 0 0 0 0];
% uppBd=[Inf Inf Inf Inf Inf Inf Inf Inf Inf Inf];
% options=optimset('MaxIter',100);
% [fitPara_k,r1_k,r2_k,exitFlag_k,output_k]=lsqnonlin(@snase_fit_k,inipara_k,lowBd,uppBd,options);
% 
% k_ppoe5=fitPara_k %fitted k1,k2,..,k9,k10
% 
% k1=fitPara_k(1);  k2=fitPara_k(2);  k3=fitPara_k(3);  k4=fitPara_k(4); k5=fitPara_k(5);
% k6=fitPara_k(6);  k7=fitPara_k(7);  k8=fitPara_k(8);  k9=fitPara_k(9);  k10=fitPara_k(10);
% [t,y] = ode15s('snase_folding_ppoe5',Time,[1 0 0 0 0 0]); 
% % subplot(2,2,2)
% semilogx(t,y(:,1),'b'); hold on %plot U
% semilogx(t,y(:,2),'g'); hold on %plot I1
% semilogx(t,y(:,3),'y'); hold on %plot I2 
% semilogx(t,y(:,4),'r'); hold on %plot N by red color * 
% semilogx(t,y(:,5),'c'); hold on %plot I3 
% semilogx(t,y(:,6),'m'); hold on %plot I4 
% xlabel('Time (s)')
% ylabel('Population')
% axis([1e-3 1 -0.05 1.05])
% title('PPOE_5 Fitting')