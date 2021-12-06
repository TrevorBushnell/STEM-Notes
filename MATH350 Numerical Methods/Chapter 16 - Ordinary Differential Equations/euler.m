
% Code for Euler's method for solving ODE of the form y'=f(t,y)
% INPUTS:
% f = function handle, f(t,y)
% [a,b] = vector givin the time interval
% c = initial condition so that y(a) = c
% N = number of steps

function [t,y] = euler(f, T, c, N)
    a = T(1);
    b = T(2);
    h = (b-a)/N; % Step size
    t = a:h:b; % Vector of time steps
    y = zeros(size(t)); % Solution vector
    y(1) = c;
    
    for i = 1: N
        y(i+1) = y(i) + h * f(t(i), y(i));
    end
end