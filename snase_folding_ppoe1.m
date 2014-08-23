
function dy=snase_folding_ppoe1(t,y)

%% y1:U y2:I y3:N y4:I1x y5:I2x 
dy = zeros(5,1);

global k1 k2 k3 k4 k5 k6 k7 k8

dy(1) = -k1*y(1) + k2*y(2);
dy(2) =  k1*y(1) - (k2+k3+k5+k7)*y(2) + k4*y(3) + k6*y(4) + k8*y(5); 
dy(3) =  k3*y(2) - k4*y(3);
dy(4) =  k5*y(2) - k6*y(4);
dy(5) =  k7*y(2) - k8*y(5);