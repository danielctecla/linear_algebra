function [matrx] = miVandermonde(x,y,z,w)

    p = @(num,pot_) num.^pot_;

    matrx = ones(4);
    matrx(2,1:4)=[x y z w];
    matrx(3,1:4)=[p(x,2) p(y,2) p(z,2) p(w,2)];
    matrx(4,1:4)=[p(x,3) p(y,3) p(z,3) p(w,3)];

end