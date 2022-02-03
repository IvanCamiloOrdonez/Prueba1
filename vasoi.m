function vasoi
%Base cuerpo
    diametro=10;
    altura=10;
    r=diametro/2;
    h=linspace(0,altura,4000); 
    %cilindro 
    x11=-55+r*cos(10*h);
    y11=95+r*sin(10*h);
    z11=h+25;%320
    plot3(x11,y11,z11,'b')
end

