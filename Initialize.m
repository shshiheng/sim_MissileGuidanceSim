clear all;
close all;

K_Guide = 3;
Deg2Rad = pi/180;
%% Target
xt0 = 0;
yt0 = 0;
Vt = 300;
direction_vt = 0;

latex_t = 2; %(g)

%% Missile
xm0 = 30000;
ym0 = 5000;
Vm = 850;
direction_vm = -180 * Deg2Rad;