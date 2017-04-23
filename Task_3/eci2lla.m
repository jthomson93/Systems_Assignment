function output = eci2lla(input)
% %#eml
% 

eci_r = input(1:3);
time = input(4);

LLA = zeros(3,1);

% 
x = eci_r(1);
y = eci_r(2);
z = eci_r(3);

% Lat
lat = atan2(z,(sqrt(y^2 + x^2)));

% Long
long = atan2(y,x) - (time*7.2921e-005);

% R
r   = sqrt(x^2 + y^2 + z^2);

output(1) = lat;
output(2) = long; 
output(3) = r;
output = output(:);