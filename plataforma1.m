function plataforma1
%Base redonda
    diametro=25;
    altura=40;
    r=diametro/2;
    h=linspace(0,altura,4000);  
    %cilindro 
    x11=-120+r*cos(10*h);
    y11=-75+r*sin(10*h);
    z11=h;
    hold on
    plot3(x11,y11,z11,'k')    
      %tapa base
    grados=linspace(0,2*pi,360);
    for i=1:size(grados,2)
        if mod(i,2)==1
            vector(i)=grados(i)+pi;
        else
            vector(i)=grados(i);
        end
    end   
    yt1=-75+r*4*cos(vector);
    xt1=-120+r*4*sin(vector);
    zt1=(vector.*0)+altura;   
    hold on
    plot3(xt1,yt1,zt1,'r')
    xlabel('x')
    ylabel('y')
    zlabel('z')   
    %Base 2
    diametro=15;
    altura=40;
    r=diametro/2;
    h=linspace(0,altura,4000);
    %cilindro 2
    x12=120+r*cos(10*h);
    y12=75+r*sin(10*h);
    z12=h;
    hold on
    plot3(x12,y12,z12,'k')
    %tapa 2
    yt2=75+r*4*cos(vector);
    xt2=120+r*4*sin(vector);
    zt2=(vector.*0)+altura;
    plot3(xt2,yt2,zt2,'r')
    
        %Base 3
    diametro=15;
    altura=25;
    r=diametro/2;
    h=linspace(0,altura,4000);
    %cilindro 3
    x13=-65+r*cos(10*h);
    y13=85+r*sin(10*h);
    z13=h;
    hold on
    plot3(x13,y13,z13,'k')
    %tapa 3
    yt3=85+r*4*cos(vector);
    xt3=-65+r*4*sin(vector);
    zt3=(vector.*0)+altura;
    plot3(xt3,yt3,zt3,'r')
    xlabel('x')
    ylabel('y')
    zlabel('z')
end