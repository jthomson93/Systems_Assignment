

constants;
K = [0:0.05:0.5]';
C = [0:0.1:2]';

for iter = 1:length(K)
    
k=K(iter);

for idx = 1:length(C)

c = C(idx);
sim('environment_model_task3');

peak = max(u_torque(:));

torque_c(idx) = peak;


[iter idx]

end

torque(:,iter) = torque_c;

end

figure;
[X,Y] = meshgrid(K,C);
surface(X,Y,torque)
% h = surf('FaceColor','gradient')
xlabel('k')
ylabel('c')
zlabel('Torque (Nm)')

mintorque = min(min(torque));
[Xmin,Ymin] = find(torque==mintorque);
kopt=K(Xmin);
copt=C(Ymin);




k=kopt;
c=copt;
sim('environment_model_task3');
new_torque = zeros(length(u_torque),3)

for index = 1:602
    new_torque(index,1) = u_torque(1,1,index);
    new_torque(index,2) = u_torque(1,2,index);
    new_torque(index,3) = u_torque(1,3,index);
end

u_torque = new_torque;

figure;
plot(tout,u_torque,'x-')
title('Control Torque for optimal control gains')
xlabel('time (seconds)')
ylabel('Torque (Nm)')
