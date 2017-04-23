function qautFeedFunc = QuatController( input )
%QUAT_FEED_CONTROLLER Summary of this function goes here
%   Detailed explanation goes here

I = [0.0506 0 0; 0 0.0506 0; 0 0 0.010];

%-------INPUTS----------------
wx = [input(1); input(2); input(3)];
k = input(4);
c = input(5);
q123 = [input(6); input(7); input(8)];

t1 = -k * I * q123;
t2 = -c * I * wx;
t3 = wx;
t4 = (I*wx);


qautFeedFunc = (t1 + t2 + cross(t3, t4));

end

