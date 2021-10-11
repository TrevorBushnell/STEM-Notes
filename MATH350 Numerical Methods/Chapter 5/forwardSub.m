
function y = forwardSub(A,b)
    n = numel(b);
    
    y = zeros(n,1);
    y(1) = b(1);
    
    for k = 2:n
        y(k) = b(k) - A(k,1:k-1) * y(1:k-1);
    end
end