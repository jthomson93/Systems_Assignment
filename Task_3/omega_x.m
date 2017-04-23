function wx = omega_x( input )
%OMEGA_X Summary of this function goes here
%   Detailed explanation goes here



w1 = input(1);
w2 = input(2);
w3 = input(3);

wx = [0 w3 -w2 w1; -w3 0 w1 w2; w2 -w1 0 w3; -w1 -w2 -w3 0];

end

