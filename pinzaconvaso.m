function pinzaconvaso (MTH)

    h=45;
    e=7/2;
    a=30/2; %altura, espesor/2 y ancho/2 pinza
    x=linspace(-a,a,500);
    
    %cubo (x a lo ancho del eslabon)
    z=repmat([0 8*e 8*e 0 0],1,size(x,2));
    y=repmat([-e -e e e -e],1,size(x,2));
    z=z(1:size(x,2));
    y=y(1:size(x,2));
    
    %cubo1 (z a lo largo del eslabon)
    z1=linspace(0,60,500);
    x1=repmat([-a -a+2*e -a+2*e -a -a],1,size(z1,2));
    y1=repmat([-e -e e e -e],1,size(z1,2));
    x1=x1(1:size(z1,2));
    y1=y1(1:size(z1,2));
    
    %cubo2 (z a lo largo del eslabon)
    x2=repmat([a a-2*e a-2*e a a],1,size(z1,2));
    y2=repmat([-e -e e e -e],1,size(z1,2));
    x2=x2(1:size(z1,2));
    y2=y2(1:size(z1,2));   
    
    %bordes
    
        yb=linspace(e,e,500);
    xb=linspace(a,a,500);
    xba=linspace(a-7,a-7,500);
    zb=linspace(0,h+15,500);
    zba=linspace(h+15,h+15,500);
    zbc=linspace(h-45,h-45,500);
    zbb=linspace(h+15,0,500)
    zbm=linspace(h+15,h-17,500);
    zbmm=linspace(h-17,h-17,500);
     zbmi=linspace(h-17,h+15,500);
     xb1=[xb xba xba xb xb xb xb xb xb xba xba -xba -xba -xb -xb];
     yb1=[yb yb -yb -yb -yb yb yb -yb yb yb yb yb yb yb -yb];
     zb1=[zba  zba zba zba zbb zbc  zb  zba  zba zba zbm zbmm zbmi zba zba];
     xb2=-xb1;
     yb2=yb1;
     zb2=zb1;
     xb=[xb1 xb2];
     yb=[yb1 yb2];
     zb=[zb1 zb2];
    
% %Vaso
    
    %Base cuerpo
    diametro=10;
    altura=10;
    r=diametro/2;
    h=linspace(0,altura,4000);  
    %cilindro 
    x11=0+r*cos(10*h);
    y11=h;
    z11=55+r*sin(10*h);
    xv=x11;yv=y11;zv=z11; 
    %uniendo 
    x=[x x1 x2 xv xb];y=[y y1 y2 yv yb];z=[z z1 z1 zv zb];
    
    %calculando los nuevos puntos
    for j=1:size(x,2)
        puntos=[x(j) y(j) z(j) 1]';
        pn=MTH*puntos;
        x(j)=pn(1);y(j)=pn(2);z(j)=pn(3);
    end
    
   %grafica
    lim1=size(x,2)-size(xv,2)-size(xb,2);
    lim2=size(x,2)-size(xb,2);
    lim3=size(x,2)-size(xv,2);
    plot3(x(1:lim1),y(1:lim1),z(1:lim1),'y','LineWidth',2);hold on;
    plot3(x(lim2:lim3),y(lim2:lim3),z(lim2:lim3),'k','LineWidth',2)
    plot3(x(lim1:lim2),y(lim1:lim2),z(lim1:lim2),'b','LineWidth',2);hold on;
   