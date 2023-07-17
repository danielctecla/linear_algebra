function [B] = base_ortonormal(B)
    B = base_ortogonal(B);
    %obtenemos solo la dimensión de las columnas
    [~,n] = size(B);
    
    
    for i = 1:n
        B(:,i) = B(:,i)/norm(B(:,i));
    end
end