
% f = function handle
% a = left endpoint of interval
% b = right endpoint of interval
% where f(a) * f(b) < 0
% tol = error tolerance on residual

% xn = nth iterate (final approximation)
% n = number of iterations

function [xn, n] = bisectionMethod(f,a,b,tol)

    residual = Inf;                % Initializing residual
    n = 0;                         % # of iterations
    
    while (residual > tol)
    
        xn = (a+b)/2;              % nth iterate is the midpoint of the interval
        residual = abs(f(xn));
        
        if f(a) * f(xn) < 0
            b = xn;
        else
            a = xn;
        end
        
        n = n + 1;                  % Increment loop counter
    
    end

end