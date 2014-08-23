
function dy=snase_folding_ppoe4(t,y)

%% y1:U y2:I1 y3:I2 y4:N y5:I3
dy = zeros(5,1);

global k1 k2 k3 k4 k5 k6 k7 k8

dy(1) = -k1*y(1) + k2*y(2);
dy(2) =  k1*y(1) - (k2+k3)*y(2) + k4*y(3);
dy(3) =  k3*y(2) - (k4+k5)*y(3) + k6*y(5);
dy(4) =  k7*y(5) - k8*y(4);
dy(5) =  k5*y(3) - (k6+k7)*y(5) + k8*y(4);
