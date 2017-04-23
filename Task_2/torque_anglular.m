function dw_dt = torque_anglular( input )
%DW_DT Summary of this function goes here
%   Detailed explanation goes here

I = [0.0506 0 0; 0 0.0506 0; 0 0 0.010];
w = [input(1); input(2); input(3)];
InputTorque = [input(4); input(5); input(6)];

% t1 = inv(-I) * w;
% t2 = I * w;
% t3 = inv(I)*InputTorque;

dw_dt = cross((inv(-I) * w),((I*w))) + inv(I)*InputTorque;

end

