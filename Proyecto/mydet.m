function [detA] = mydet(A)

[L,U,~,sig] = lutx(A);

%Se puede omitir la multiplicación de la diagonal de L
%ya que el producto de la diagonal de L es 1 pero la dejamos para demostrar
%que es cierto

detA =  prod(diag(L))*prod(diag(U));

detA = sig * detA;
end