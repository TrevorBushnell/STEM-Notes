
% f = function handle
% a = left endpoint of interval
% b = right endpoint of interval
% where f(a) * f(b) < 0
% atol =  absolute value of error tolerance on residual

% xn = nth iterate (final approximation)
% n = number of iterations

function [xn, n] = bisectionMethod(f,a,b,atol)

    N = ceil(log2((b-a)/(2 * atol))); % stopping iteration
    
    for n = 0:N
    
        xn = (a+b)/2;              % nth iterate is the midpoint of the interval
        residual = abs(f(xn));
        
        if f(a) * f(xn) < 0
            b = xn;
        else
            a = xn;
        end
    
    end

end