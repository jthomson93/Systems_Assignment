num_steps = 5;
gain_range = linspace(10000, 100000, num_steps);
time = zeros(1, num_steps);
global MT
global TotalPower
global i1max
global i1min
global i2max
global i2min
global i3max
global i3min
TotalPower = 0;
local_power = zeros(1, num_steps);
locali1max = zeros(1, num_steps);
locali1min = zeros(1, num_steps);
locali2max = zeros(1, num_steps);
locali2min = zeros(1, num_steps);
locali3max = zeros(1, num_steps);
locali3min = zeros(1, num_steps);

i1max = 0
i1min = 0
i2max = 0
i2min = 0
i3max = 0
i3min = 0

for i = 1:num_steps
    i1max = 0
    i1min = 0
    i2max = 0
    i2min = 0
    i3max = 0
    i3min = 0
    TotalPower = 0; % RESET
    k = gain_range(i);
    simout = sim('environment_model');
    time(i) = simout(end);
    local_power(i) = TotalPower; % CATELOGUE
    locali1max(i) = i1max;
    locali1min(i) = i1min;
    locali2max(i) = i2max;
    locali2min(i) = i2min;
    locali3max(i) = i3max;
    locali3min(i) = i3min;

end

disp(MT)
figure;
plot(gain_range,time)
xlabel('Gain');
ylabel('Time (s)');

figure;
plot(gain_range,local_power)
xlabel('Gain');
ylabel('Power Consumption');

figure;
plot(gain_range,locali1max,gain_range,locali1min,gain_range,locali2max,gain_range,locali2min,gain_range,locali3max,gain_range,locali3min)
xlabel('Gain');
ylabel('Current');
    