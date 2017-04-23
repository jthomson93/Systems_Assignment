clear all;

%---------------------------------------------------
% TASK 1 [INITIAL DATA]
%---------------------------------------------------
qNotTransposed = [0.1745, 0.5951, -0.7329, 0.2798];
wNotTransposed = [-0.01, 0.01, 0.005];
q = transpose(qNotTransposed);
w = transpose(wNotTransposed);

wmat = [0 w(3) -w(2) w(1); -w(3) 0 w(1) w(2); w(2) -w(1) 0 w(3); -w(1) -w(2) -w(3) 0];
t_int = linspace(0, 1000, 1001);

% ------------ TASK 1(A) OUTPUT --------------------
[tout, qout] = ode45(@quat_de_func,t_int,q,[],wmat);

figure
plot(tout,qout);
xlabel('Time (s)');
ylabel('Quaternion');
legend('Quaternion');

% ------------ TASK 1(B) OUTPUT --------------------
 dcm = quat2dcm(qout);
 [roll123, pitch123, yaw123] = dcm2angle(dcm,'xyz');
 [roll321, pitch321, yaw321] = dcm2angle(dcm, 'zyx');

figure
plot(tout, roll123, tout, pitch123, tout, yaw123)
title('123 Rotation');
xlabel('Qauternion Time History (s)');
ylabel('123 Rotation in Radians');
legend('Roll', 'Pitch', 'Yaw');


figure
plot(tout, roll321, tout, pitch321, tout, yaw321)
title('321 Rotation');
xlabel('Qauternion Time History (s)');
ylabel('321 Rotation in Radians');
legend('Roll', 'Pitch', 'Yaw');


% ------------ TASK 1(C) OUTPUT --------------------
valid = validation(qout);

figure;
plot(tout, valid)
title('Validation Case');
xlabel('Quaternion Time History (s)');
ylabel('Qauternion');
ylim([0 2])

