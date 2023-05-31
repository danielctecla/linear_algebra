function [VecCos,VecSen] = MiFourier(m,x)

    VectorTemporal = (0:m)*x;
    
    msen = @(num) sin(num);
    mcos = @(num) cos(num);

    VecCos = arrayfun(mcos,VectorTemporal);
    VecSen = arrayfun(msen,VectorTemporal);
end