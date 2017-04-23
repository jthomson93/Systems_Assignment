function dx_dt = quat_de_func(time,q,w)

dx_dt = 0.5 * w * q;

end

