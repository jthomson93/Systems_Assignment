% Runs this first before running simulink blocks

% Jongrae Kim <menjkim@leeds.ac.uk>
% 25th Feb 2015

clear all;

launch_date = [2015 05 03]; %[year month date]
launch_time = [12 00 00];   %[hour minute seconds]

% Set Satellite Inertia
Sat_I = [0.0506 0 0; 0 0.0506 0; 0 0 0.010];
Sat_iI = inv(Sat_I);

% Orbit and Earth Parameters
r_earth = 6371e3;                   % the mean radius of the earth [m] 
a = 7028000;                        % Semi major axis, [m]
initial_v = [0 -1048 7458];         % Initial Satellite Velocities [m/s]
initial_r = [7028000 0 0];          % Initial Satellite Position [m]
Gm = 3.986e+14;                     % mu: gravitational constant [Nm^2/kg]
T = 2*pi*sqrt(a^3/Gm);              % Orbital Period

% Satellite Initial Conditions
Sat_q0 = [0 0 0 1];                % initial quarternions
Sat_w0 = [0 -0.1 0.2];             % initial angular velocity

% magnetic torquer parameters
N_mtq = 72;                        % Number of turns in the winding
A_mtq = 0.02;                      % Area of the winding [m^2] 
R_mtq = 50;                        % Winding Resistance [Ohm] 