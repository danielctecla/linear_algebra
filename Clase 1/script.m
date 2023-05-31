a = 10;
n = 10;
B = [1,0,-1;2,0,-3;1,2,3];

disp(B);
disp("Determiante de B");
disp(det(B));

for i=1:2:n
    disp("El numero a imprimir es: ")
    disp(cuadrado(i))
end