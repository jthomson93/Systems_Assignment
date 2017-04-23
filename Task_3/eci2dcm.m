function dcm = eci2dcm( input )
%ECI2DCM Summary of this function goes here
%   Detailed explanation goes here

r=[input(1),input(2),input(3)];
v=[input(4),input(5),input(6)];
 
magr=sqrt((input(1)^2) + (input(2)^2) + (input(3)^2));
magv=sqrt((input(4)^2) + (input(5)^2) + (input(6)^2));
 
xlvlh = v/magv;
i = (r/magr);
ylvlh= cross (xlvlh, i);
 
zlvlh=cross(xlvlh, ylvlh);
dcm = transpose([xlvlh',ylvlh',zlvlh']);

end

