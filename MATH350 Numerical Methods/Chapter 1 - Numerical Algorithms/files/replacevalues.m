
function x = replaceValues(x)

    for n = 1:numel(x)
    
        if x(n) == 0
            x(n) == 1
            
        elseif x(n) < 0
            x(n) == 0
            
        end
    
    end

end