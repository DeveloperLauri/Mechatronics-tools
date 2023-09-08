function [M] = calculateDCMotorTorque(m, incline_max, a, wheel_r)
  % F_sigma = f_total = f_wheel - f_gravity = m*a
  % M/wheel_d = m*a + G*sin(incline_max)
  % M = m(a + g*sin(incline_max)) * wheel_d

  % considering gravitational force and force needed to accelerate the object
  M = m * (a + 9.81 * sin(deg2rad(incline_max))) * wheel_r;
end
