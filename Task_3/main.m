clear all;
run('constants.m');

K_local = [0:0.1:0.2]';
C_local = [0:0.1:0.1]';

for i  = 1:length(K_local)
  
    k = K_local(i);
    
    for j = 1:length(C_local)
        
         c = C_local(j);
         
         sim('environment_model_task3');
         max_torque = max(max(u_torque));
         
         torque_c(j) = max_torque;
   
         [i j]
    end
    
    torque (:,i) = torque_c;
    
end

figure(1);
[X, Y] = meshgrid(K_local, C_local);
surface = [X, Y, torque];

minimumTorque = min(min(torque));
[X_min, Y_min] = find(torque == minimumTorque);
K_optimal = K_local(X_min);
C_optimal = C_local(Y_min);

k = K_optimal;
c = C_optimal;
clear u_torque;

sim('environment_model_task3','StopTime','1500');

figure(2);
plot(tout, u_torque);
xlabel('Time');
ylabel('Torque (nm');

    