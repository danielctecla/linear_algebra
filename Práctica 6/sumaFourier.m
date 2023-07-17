function [sum_] = sumaFourier(a,b,m,x)

    [VecCos,VecSen] = MiFourier(m,x);
    
    a = a.*VecCos;
    b = b.*VecSen;

    a = sum(a);
    b = sum(b);

    sum_ = a+b;

end