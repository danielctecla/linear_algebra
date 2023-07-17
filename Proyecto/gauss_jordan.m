function [A,b] = gauss_jordan(A,b)
n = size(A,1);
%Eliminación Gaussiana tenemos ahora una matriz tirangular superior
[A,b]=e_gaussiana(A,b);

%iniciaremos en la última columna
for i = n:-1:1
    %eliminaremos arriba del pivote
    for j = i-1:-1:1
        %temp es nuestro factor para multiplicar a nuestra fila i para
        %eliminar la fila j y modificamos b en las mismas filas
        temp = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - temp*A(i,:);
        b(j,:) = b(j,:) - temp*b(i,:);
    end
    %en caso de que nuestro pivote sea distinto de 1 entonces lo volvemos 1
    %dividiendo entre si mismo y dividiendo a b en la fila i
    if(A(i,i)~=1)
        temp = A(i,i);
        A(i,i) = A(i,i)/A(i,i);
        b(i,:) = b(i,:)/temp;
    end
end
end