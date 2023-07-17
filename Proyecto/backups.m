function [x] = backups(U,x)
    %función proporcionada por el profesor
    n = size(U,1);
    for k = n:-1:1
        j = k+1:n;
        x(k) = (x(k)-U(k,j)*x(j))/U(k,k);
    end
end