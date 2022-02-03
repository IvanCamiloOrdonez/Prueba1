function eslabon5 (MTH)
    diametro=6;
    altura=25;
    r=diametro/2;
    h=linspace(0,altura,3000);
    %cilindro 
   x=r*cos(10*h);
    y=r*sin(10*h);
    z=h;
     z2=0;
    y2=0;
    x2=0;

    grados=linspace(0,2*pi,360);
    for i=1:size(grados,2)
        if mod(i,2)==1
            vector(i)=grados(i)+pi;
        else
            vector(i)=grados(i);
        end
    end

    x=[x x2];
    z=[z z2];
    y=[y y2];

    for j=1:size(x,2)
        puntos=[x(j) y(j) z(j) 1]';
        pn=MTH*puntos;
        x(j)=pn(1);y(j)=pn(2);z(j)=pn(3);
    end
    lim1=size(x,2);%-size(xb,2);
    lim2=size(x,2);
    plot3(x(1:lim1),y(1:lim1),z(1:lim1),'k','LineWidth',2);hold on;
    plot3(x(lim1:lim2),y(lim1:lim2),z(lim1:lim2),'k','LineWidth',2);hold on;