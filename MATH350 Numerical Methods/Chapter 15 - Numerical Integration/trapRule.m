
function Itrap = trapRule(f, a, b, r)
    h = (b-a)/r;
    
    Itrap = f(a); % Initialize our sum
    
    for i=1:r-1
        Itrap = Itrap + 2*f(a+i*h); 
    end
    
    Itrap = Itrap + f(b); 
    Itrap = (h/2)*Itrap; 
end