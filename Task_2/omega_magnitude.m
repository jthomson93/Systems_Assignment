function o_mag = omega_magnitude( input )
%OMEGA_MAGNITUDE Summary of this function goes here
%   Detailed explanation goes here

w1 = input(1,:);
w2 = input(2,:);
w3 = input(3,:);

o_mag = sqrt((w1^2) + (w2^2) + (w3^2));

end

