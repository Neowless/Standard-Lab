D_object = -100;
H_object = 5;
n = 1.5;
d_surfaces = 10;
R1 = 50;
R2 = -50;
AS_r = 10;
lambda = 550;

h = 5;

incident_x = (50^2-h^2)^0.5;
theta_1 = arctan(h/(50-incident_x));
theta_2 = arcsin(sin(theta_1)/1.5);

theta_3 = theta_1-theta_2;



