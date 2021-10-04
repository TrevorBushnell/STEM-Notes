
% This is an implementation fo the secant method for solving f(x) = 0
% f = the function f(x)
% x0, x1 = two initial guesses (x0 ~= x1)
% tol = error tolerance on residual

% xk = approximate root found


function xk = secantMethod(f, x0, x1, tol)

    rk = abs(f(x0));   % residual
    xk = x0;
    
    k = 0;    % loop counter
    
    y0 = f(x0);
    y1 = f(x1);
    
    while (rk > tol)
    
        xk = x1 - y1 * ((x1 - x0)/(y1-y0));
        rk = abs(f(xk));
        x0 = x1;
        x1 = xk;
        y0 = f(x0);
        
        k = k + 1;
        
    end

end