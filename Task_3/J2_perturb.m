function U = J2_perturb(input)
%#eml

rad = input(1);
v = input(2:4);

r1 = v(1);
r2 = v(2);
r3 = v(3);

mu = 3.9860e+014;
J2 = 1082.63*10^-6;
Re = 6371000;

term1 = ((3*J2*mu*(Re^2))/2)*(1/(rad^7));

% revised by jongrae <Jongrae.Kim@glasgow.ac.uk>, 09 July 2012
x = (3*r3^2-rad^2)  *r1;%(5*(r3^2))-(((r1^2)+(r2^2)+(r3^2))*r1);
y = (3*r3^2-rad^2)  *r2;%(5*(r3^2))-(((r1^2)+(r2^2)+(r3^2))*r2);
z = (3*r3^2-3*rad^2)*r3;%(5*(r3^2))-(3*((r1^2)+(r2^2)+(r3^2))*r3);

U1 = term1*x;
U2 = term1*y;
U3 = term1*z;

U = [U1 U2 U3];

% r3 = rad^3;
% r7 = rad^7;
% r5 = rad^5;
% 
% Aj2 = 0.5*J2*(Re^2);
% 
% U1 = (-3/2)*J2*(mu/rad^2)*((Re/rad)^2)*((1-5*((r3/rad)^2))*(r1/rad));
% U2 = (-3/2)*J2*(mu/rad^2)*((Re/rad)^2)*((1-5*((r3/rad)^2))*(r2/rad));
% U3 = (-3/2)*J2*(mu/rad^2)*((Re/rad)^2)*((3-5*((r3/rad)^2))*(r3/rad));

