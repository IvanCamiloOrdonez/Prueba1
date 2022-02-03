function eslabon4 (MTH)
    h=19;
    e=4;
    a=6; 
    x=linspace(-a,a,500);
    y=repmat([-e -e e e -e],1,size(x,2));
    z=repmat([0 6.5*e 6.5*e 0 0],1,size(x,2));
    z=z(1:size(x,2));
    y=y(1:size(x,2));
    x=[x ];y=[y ];z=[z ];
    for j=1:size(x,2)
        puntos=[x(j) y(j) z(j) 1]';
        pn=MTH*puntos;
        x(j)=pn(1);y(j)=pn(2);z(j)=pn(3);
    end
    %graficos
    plot3(x,y,z,'y','LineWidth',2);hold on;

