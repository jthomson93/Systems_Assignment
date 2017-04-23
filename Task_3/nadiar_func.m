function dw_dt = nadiar_func( input )
%NADIAR_FUNC Summary of this function goes here
%   Detailed explanation goes here
w = [input(1); input(2); input(3)];
I = [0.0506 0 0; 0 0.0506 0; 0 0 0.010];
u = [input(4); input(5); input(6)];

t1 = -inv(I) * w;
t2 = (I * w);
t3 = inv(I) * u;


dw_dt = cross(t1,t2) + t3;

end

