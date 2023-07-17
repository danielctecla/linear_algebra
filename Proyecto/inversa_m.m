function [I] = inversa_m(A)

n = size(A,1);
I = zeros(n);
%creamos nuestra identidad sin usar eye
for i = 1:n
    for j = 1:n
        if(i==j)
            I(i,j)=1;
        else
            I(i,j)=0;
        end
    end
end

%mandamos nuestra matriz A y matriz I pero sin retornar la matriz A ya que
%no nos importa, en este caso le aplicamos gauss jordan y lo que se le haga
%a A se le hará a la matriz I. Las funciones están adaptadas para que
%funcione
[~,I] = gauss_jordan(A,I);


end