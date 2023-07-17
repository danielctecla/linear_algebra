function [x] = forward(L,x)
    %función dada por el profe
    [n,n] = size(L);
    for k = 1:n
        j = 1:k-1;
        x(k) = (x(k) - L(k,j)*x(j))/L(k,k);
    end
end