function B_eci = tan2eci(input)

B_tan = input(1:3); B_tan = B_tan(:);
eci_r = input(4:6); eci_r = eci_r(:);
lat = input(7);

B_eci = zeros(3,1);

% Calculate alpha
alpha = atan2(eci_r(2),eci_r(1));

% Construct Matrix
sl = sin(lat);
sa = sin(alpha);
cl = cos(lat);
ca = cos(alpha);

mat = [cl*ca sl*ca -sa;cl*sa sl*sa  ca;sl -cl 0];
     
B_eci = mat*B_tan(:);
B_eci = B_eci(:);