
function dy=snase_folding_ppoe3(t,y)

%% y1:U y2:I y3:N y4:Ix
dy = zeros(4,1);

global k1 k2 k3 k4 k5 k6

dy(1) = -k1*y(1) + k2*y(2);
dy(2) =  k1*y(1) - (k2+k3+k5)*y(2) + k4*y(3) + k6*y(4); 
dy(3) =  k3*y(2) - k4*y(3);
dy(4) =  k5*y(2) - k6*y(4);
