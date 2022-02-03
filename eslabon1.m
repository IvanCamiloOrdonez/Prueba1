function eslabon1(MTH)
    diametro=14.8;
    altura=57.4;
    r=diametro/2;
    h=linspace(0,altura,3000);
    %cilindro 
   x=r*cos(10*h);
    y=r*sin(10*h);
    z=h;
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
    
    yt=r*cos(vector);
    xt=(vector.*0)+r;
    zt=altura+r*2*sin(vector);
    xt2=(vector.*0)-r;
    
    yb=(r+1)*cos(grados);
    xb=(grados*0)+r;
    zb=altura+(r+1)*2*sin(grados);
    xb2=-xb;   
    xb=[xb xb2];
    yb=[yb yb];
    zb=[zb zb];   
    %juntando
     x=[x x2 xt xt2 xb];
    z=[z z2 zt zt zb];
    y=[y y2 yt yt yb];
    for j=1:size(x,2)
        puntos=[x(j) y(j) z(j) 1]';
        pn=MTH*puntos;
        x(j)=pn(1);y(j)=pn(2);z(j)=pn(3);
    end   
    %grafico
    lim1=size(x,2)-size(xb,2);
    lim2=size(x,2);
    plot3(x(1:lim1),y(1:lim1),z(1:lim1),'g','LineWidth',2);hold on;
    plot3(x(lim1:lim2),y(lim1:lim2),z(lim1:lim2),'k','LineWidth',2);hold on;
 