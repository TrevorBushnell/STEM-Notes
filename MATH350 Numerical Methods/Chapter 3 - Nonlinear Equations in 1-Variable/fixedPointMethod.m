
function xn = fixedPointMethod(g,x0,tol)

    maxiter = 1000; % Max # of iterations to perform
    rn = abs(g(x0)-x0);
    xn = x0;
    n = 0;
    
    
    while (rn > tol) && (n < maxiter)
    
        xn = g(xn);
        rn = abs(g(xn)-xn);
        n = n + 1;
    
    end
    
    
    if n == maxiter
    
        warning("Maximum number of iterations reached");
        
    end

end