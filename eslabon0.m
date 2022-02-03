function eslabon0(MTH)
    diametro=20;
    altura=35;
    r=diametro/2;
    h=linspace(0,altura,3000);
    %cilindro 
    x=r*cos(10*h);
    y=r*sin(10*h);
    z=h;  
    %acople para el prox eslabon
    %cilindro=50;
    x2=linspace(-r+1,r-1,3000);
    y2=y;
    z2=altura+x;    
    %tapas
    grados=linspace(0,2*pi,360);
    for i=1:size(grados,2)
        if mod(i,2)==1
            vector(i)=grados(i)+pi;
        else
            vector(i)=grados(i);
        end
    end
%     %cilindro=50;
      yt=r*cos(vector);
    xt=(vector.*0)+r;
    zt=altura+r*2*sin(vector);
    xt2=(vector.*0)-r;   
    xt3=r*cos(vector); 
    yt2=(vector.*0)+r;
    zt3=altura+r*2*sin(vector);
    %bordes
    xb=(r)*cos(grados);
    zb=(grados*0)+r+1;
    yb=altura+(r)*2*sin(grados);
    zb3=(r)*cos(grados);
    xb3=(grados*0)+r+1;
    yb3=(r)*2*sin(grados)+altura;
    xb2=-xb3
    xb=[xb xb3  xb2 ];
    yb=[yb yb3  yb3];
    zb=[zb zb3  zb3];
    x=[x x2 xt xt2 xt3 xb];
    z=[z z2 zt zt zt3 yb];
    y=[y y2 yt yt yt2 zb];
    for j=1:size(x,2)
        puntos=[x(j) y(j) z(j) 1]';
        pn=MTH*puntos;
        x(j)=pn(1);y(j)=pn(2);z(j)=pn(3);
    end    
    %grafico
    lim1=size(x,2)-size(xb,2);
    lim2=size(x,2);
    plot3(x(1:lim1),y(1:lim1),z(1:lim1),'r','LineWidth',2);hold on;
    plot3(x(lim1:lim2),y(lim1:lim2),z(lim1:lim2),'k','LineWidth',2);hold on;
    xlim([-200,200]);ylim([-180,180]);zlim([0,250])
   view([101 11])
end

