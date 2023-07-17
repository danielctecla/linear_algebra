function [B_] = base_ortogonal(B)
%BASE_ORTOGONAL
[m,n] = size(B);

%hacemos nuestra matriz de cero
B_ = zeros(m,n);

%vamos haciendo Gram-Schmidt desde la columna 1:n
for i = 1:n
    %en la matriz de ceros asignamos la columna i y le vamos a restar
    %las columnas hacía atrás de B_ cuando i > 1 ya que cuando es 1
    %el for no se ejecuta
    B_ (:,i) = B(:,i);
    for k = i-1:-1:1
        %formula de Gram-Schmidt
        %vamos restando de Wk hasta W1 cuando i >1 y k va disminuyendo de
        %-1
        B_(:,i) = B_(:,i) - (dot(B(:,i),B_(:,k))/dot(B_(:,k),B_(:,k)))*B_(:,k);
    end
   
end


end