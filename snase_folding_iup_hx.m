
function dy=snase_folding_iup_hx(t,y,p)

%% y1:U y2:I1 y3:I2 y4:N y5:H_ex
dy = zeros(5,1);

global k1 k2 k3 k4 k5 k6 k7 k8 kch
global residue_case

dy(1) = -(k1+k5)*y(1) + k2*y(2) + k6*y(3);
dy(2) =  k1*y(1) - (k2+k3)*y(2) + k4*y(4); 
dy(3) =  k5*y(1) - (k6+k7)*y(3) + k8*y(4);
dy(4) =  k3*y(2) - (k4+k8)*y(4) + k7*y(3);

switch residue_case
    case 1
        dy(5) = kch*y(1);
    case 2
        dy(5) = kch*(y(1)+y(3));
    case 3
        dy(5) = kch*(y(1)+y(2));
    case 4
        dy(5) = kch*(y(1)+y(2)+y(3));
end