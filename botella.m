function botella
%Base cuerpo
    diametro=15;
    altura=15;
    r=diametro/2;
    h=linspace(0,altura,4000); 
    %cilindro 
    x11=-115+r*cos(10*h);
    y11=-60+r*sin(10*h);
    z11=h+40;%320
%     hold on
%     plot3(x11,y11,z11,'m')  
   %tapa base
    grados=linspace(0,2*pi,360);
    for i=1:size(grados,2)
        if mod(i,2)==1
            vector(i)=grados(i)+pi;
        else
            vector(i)=grados(i);
        end
    end   
    yt2=-60+r*cos(vector);
    xt2=-115+r*sin(vector);
    zt2=(vector.*0)+55;   
%Base pico
    diametro=6;
    altura=7.5;
    r=diametro/2;
    h=linspace(0,altura,4000);  
    %cilindro 
    xt3=-115+r*cos(10*h);
    yt3=-60+r*sin(10*h);
    zt3=h+55;

%uniendo
    x=[x11 xt2 xt3];y=[y11 yt2 yt3];z=[z11 zt2 zt3];
    hold on
    lim1=size(x,2);
    lim2=size(x,2);
    plot3(x(1:lim1),y(1:lim1),z(1:lim1),'k','LineWidth',2);hold on;
    plot3(x(lim1:lim2),y(lim1:lim2),z(lim1:lim2),'k','LineWidth',2);hold on;