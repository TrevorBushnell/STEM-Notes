
function [t,y] = rungeKutta2(f, T, c, N)
    a = T(1);
    b = T(2);
    h = (b-a)/N; % Step size
    t = a:h:b; % Vector of time steps
    y = zeros(size(t)); % Solution vector
    y(1) = c;
    
    for i = 1: N
        k1 = h * f(t(i), y(i));
        k2 = h * f(t(i+1), y(i) + k1);
        y(i+1) = y(i) + (k1+k2)/2;
    end
end