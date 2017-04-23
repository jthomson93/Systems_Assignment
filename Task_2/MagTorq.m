function tq_mag = MagTorq( input )
%MAGTORQ Calculates the first portion of the task 2 assignment prior to
%summing the torqes.
global TotalPower ;
global MT;

%-----------MUX INPUTS-------------
Geo_FV = [input(5) input(6) input(7)];
k = input(1);
w = [input(2) input(3) input(4)];

%-----------CALCULATIONS-------------
KW = k * w;

MT = cross(KW,Geo_FV);

TotalPower = TotalPower + power_consumption(MT);
tq_mag = cross(MT, Geo_FV);

end

