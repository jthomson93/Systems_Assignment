function norm_quat = quat_norm( input )
%QUAT_NORM Summary of this function goes here
%   Detailed explanation goes here

quat = transpose(input);
norm_quat = quatnormalize(quat);

end

