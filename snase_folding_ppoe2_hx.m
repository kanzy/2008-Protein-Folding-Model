
function dy=snase_folding_ppoe2(t,y)

%% y1:U y2:I1 y3:I2 y4:N y5:I1x y6:I2x y7:H_ex
dy = zeros(7,1);

global k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 kch
global residue_case

dy(1) = -k1*y(1) + k2*y(2);
dy(2) =  k1*y(1) - (k2+k3+k7)*y(2) + k4*y(3) + k8*y(5); 
dy(3) =  k3*y(2) - (k4+k5+k9)*y(3) + k6*y(4) + k10*y(6);
dy(4) =  k5*y(3) - k6*y(4);
dy(5) =  k7*y(2) - k8*y(5);
dy(6) =  k9*y(3) - k10*y(6); 

switch residue_case
    case 1
        dy(7) = kch*y(1);
    case 2
        dy(7) = kch*(y(1)+y(2)+y(5));
    case 3
        dy(7) = kch*(y(1)+y(2)+y(5)+y(3)+y(6));
end