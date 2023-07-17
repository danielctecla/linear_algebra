function [A,b] = e_gaussiana(A,b)
%Obtenemos el número de filas.
n = size(A,1);

%Este for recorre las columnas de n hasta n-1
for i = 1:n-1
    %El iterador es para tener el número de fila más abajo del pivote.
    count = i+1;
    %Recorre las filas del pivote hacía abajo para la eliminación
    for j = (i+1):n
        %Si el pivote es cero entonces vamos recorriendo las filas con
        %ayuda del iterador para encontrar una fila que sea distinto de
        %cero
        while (A(i,i)==0) && (count<=n)
            %si encuentra la fila que es distinto de cero entonces se
            %itercambia las columnas de A y b.
            if A(count,i) ~= 0
                A([i count],:)=A([count i],:);
                b([i count],:)=b([count i],:);
            end
            count = count + 1;
        end
        %obtenemos el factor para hacer la multiplicacion y convertir en
        %cero todas las filas debajo del pivote
        temp = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - temp*A(i,:);
        b(j,:)= b(j,:) - temp*b(i,:);
    end
end
end