function [L,U,p,sig] = lutx(A)

    n = size(A,1);
    %nuestra matriz de permutación
    p = (1:n)';
    
    %recorremos por columnas.
    for k = 1:n-1
        
        %Obtenemos la fila en la que esta el valor más grande.
        [~,m] = max(abs(A(k:n,k)));
        m = m+k-1;
        if(A(m,k) ~= 0)
            %se comprueba que no sea el mismo valor de la fila
            if(m ~= k)
                %Intercambio de renglones
                A([k m],:) = A([m k],:);
                p([k m],:) = p([m k],:);
            end
            i = k+1:n;
            %dividimos los valores que estan debajo del pivote parcial
            A(i,k) = A(i,k)/A(k,k);
            j= k+1:n;

            A(i,j) = A(i,j) - A(i,k)*A(k,j);
        end
    end
    L = tril(A,-1) + eye(n,n);
    U = triu(A);
    
    p_count = 0;

    %Contador para el número de permutaciones.
    for i = 1:n-1
        for j = i+1:n
            if(p(i,:)>p(j,:))
                p_count = p_count+1;
            end
        end
    end
    
    %Checamos si es par o impar el número de permutaciones
    if(mod(p_count,2) == 0)
        sig = 1;
    else
        sig = -1;
    end

end