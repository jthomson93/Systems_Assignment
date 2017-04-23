function B_tan = B_dipole(input)

lat = input(1);
long = input(2);
r = input(3);

coele = 0.5*pi-lat;
phi = long;

g01 = -29.4965;
g11 = -1.5859;
h11 = 4.9451;

ar3 = (6371200/r)^3;
c0 = cos(coele);
s0 = sin(coele);
cp = cos(phi);
sp = sin(phi);

term1 = (g11*cp)+(h11*sp);

Br = 2*ar3*((g01*c0)+(term1*s0));
Bth = ar3*((g01*s0)-(term1*c0));
Bph = ar3*((g11*sp)-(h11*cp));

B_tan = [Br Bth Bph]';