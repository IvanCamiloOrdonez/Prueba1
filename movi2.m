function movi2(xf,yf,zf,F3,O)
T=20;
O0=O.O0;O1=O.O1-5;O2=O.O2;O3=O.O3;O4=O.O4;
xf=xf;yf=yf;zf=zf;F3=F3;F4=0;
[F0,F1,F2]=Angle(xf,yf,zf)
err=0;
er2=0;
er3=0;
if F1>=150 || F1<=-150
F1=0; 
disp('Valor del angulo eslabon 2 no se pudo cumplir, se tomara 0')
er2=1;
end
if F2>=120 || F2<=-120
F2=0; 
er3=1;
disp('Valor del angulo eslabon 3 no se pudo cumplir, se tomara 0')
end
if F4>=30 || F4<=-33
F4=0; 
err=1;
end
k0=(F0-O0)/T;k1=(F1-O1)/T;k2=(F2-O2)/T;k3=(F3-O3)/T;k4=(F4-O4)/T;
for k=1:T
    pause(.065);clf;
[M1,M2,M3,M4,M5]=CD(O0,O1,O2,O3,O4);
%eslabones
eslabon0(M1) %Base 
eslabon1(M2) %Primero rotatorio
eslabon2(M3) %segundo rotatorio 
eslabon3(M4) %muñeca
pinzaconvaso(M5) %soporte de mano
plataforma1
botella
  rectangle('Position',[-100,-100,200,200],'FaceColor',[.5,0,0],'EdgeColor','c',...
    'LineWidth',3)
    rectangle('Position',[-50,-50,100,100],'Curvature',[1 1],'FaceColor',[0,0,0],'EdgeColor','m',...
    'LineWidth',3)
O0=k0+O0;
O1=k1+O1;
O2=k2+O2;
O3=k3+O3;
O4=k4+O4;
if err==1
    text(0,50,50,'El valor del ángulo de la pinza no se pudo cumplir, se tomara 0°')
end

if er3==1
    text(0,0,50,'El valor del ángulo del eslabon3 no se pudo cumplir, se tomara 0°')
end
  
if er2==1
    text(-40,40,70,'El valor del ángulo del eslabon2 no se pudo cumplir, se tomara 0°')
end
end
 O=struct('O0',O0,'O1',O1,'O2',O2,'O3',O3,'O4',O4);
assignin('base','O',O);%Se crea una variable global
xlabel('Eje X');ylabel('Eje Y');zlabel('Eje Z')
end

