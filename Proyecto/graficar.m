function graficar(v1,v2,v3,v4,v5,u1,u2,u3,u4,u5)
    x = [v1(1), v2(1), v3(1), v4(1), v1(1),v5(1),v4(1)];
    y = [v1(2), v2(2), v3(2), v4(2), v1(2),v5(2),v4(2)];
    
    
    % Graficar el cuadrado
    %gráfica del cuadrado azul
    plot(x, y, 'color','b' )
    hold on
    %lineas que aparecen en el cuadrado del cuadrado azul
    line([v1(1), v3(1)], [v1(2), v3(2)], 'Color', 'b')
    line([v2(1), v4(1)], [v2(2), v4(2)], 'Color', 'b')

    ux = [u1(1), u2(1), u3(1), u4(1), u1(1), u5(1),u4(1)];
    uy = [u1(2), u2(2), u3(2), u4(2), u1(2), u5(2),u4(2)];
    %gráfica del cuadrado amarillo
    plot(ux, uy, 'r')
    %lineas que aparecen en medio del cuadrado amarillo
    line([u1(1), u3(1)], [u1(2), u3(2)], 'Color', 'r')
    line([u2(1), u4(1)], [u2(2), u4(2)], 'Color', 'r')

    hold off
    axis equal
    axis([-10, 20, -10, 10])
    grid on
end