function [L,U] = Doolittle_extra(A)
%asumiendo que es cuadrada solo obtenemos el número de filas
n = size(A,1);
U = zeros(n,n);
L = eye(n,n);

    for i = 1:n
        %aplicamos la formula que obtuvimos en la teoría que es la tercera
        %formula de la imagen de la teoría. Para los valores de U.
         
        for j = i:n
            contador = 0;
            %sumatoria
            for k = 1:i-1
                contador = contador + L(i,k)*U(k,j);
            end
            U(i,j) = A(i,j) - contador;
            
            %aplicamos la cuarta formula, sabemos que que hay valores que
            %dependen de los anteriores es por esto que son FOR anidados.
            for k = j+1:n
                contador = 0;
                %sumatoria
                for z = 1:j-1
                    contador = contador + L(k,z)*U(z,j);
                end
                L(k,j) = (A(k,j)-contador)/U(j,j);
            end

        end

        
    end
end