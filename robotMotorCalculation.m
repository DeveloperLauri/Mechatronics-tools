m = 50; % [kg]
v_max = 1.5; % [m/s]
incline_max = 10; % [degrees]
a = v_max / 2; % [m/s^2], acceleration to reach full speed in 2 seconds
wheel_r = 0.07; % [m]

torque = calculateDCMotorTorque(m, incline_max, a, wheel_r);
disp(torque);

% we can split this in half because there is going to be 2 motors. This torque value is the torque at the ouput of the gearhead (reduction gear)
torque_per_motor = torque/2;
disp(torque_per_motor);

% Let's calculate the rpm at specified speed. This rpm value is the torque at the output of the gearhead (reduction gear)
% v = omega * r
% omega = v / r
omega = v_max / wheel_r; % [rad/s]

% rpm = omega * 60 / (2*pi)
rpm = omega * 60 / (2*pi);

% power = torque * omega
% power per motor
power_w = torque_per_motor * omega; % [W]
% power per motor Horsepower
power_hp = power_w / 746; % [hp]



