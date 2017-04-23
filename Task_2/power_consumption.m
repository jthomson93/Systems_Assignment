function power = power_consumption( mt )
%POWER_CONSUMPTION Summary of this function goes here
%   Detailed explanation goes here
global i1max
global i1min
global i2max
global i2min
global i3max
global i3min

i1 = desiredCurrent(mt(1));
if i1 > i1max
    i1max = i1;
else if i1 < i1min
        i1min = i1;
    end
end
disp(i1)
i2 = desiredCurrent(mt(2));
if i2 > i2max
    i2max = i2;
else if i2 < i2min
        i2min = i2;
    end
end
disp(i2)
i3 = desiredCurrent(mt(3));
if i3 > i3max
    i3max = i3;
else if i3 < i3min
        i3min = i3;
    end
end
disp(i3)

power = ((i1^2) + (i2^2) + (i3^2)) * 50;

end

