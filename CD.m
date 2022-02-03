function [M1,M2,M3,M4,M5]=CD(ang0,ang1,ang2,ang3,ang4)
%Longitud de eslabones(cm)
L=[0 35 57.4 49 16  10 1.5 10];
%Tabla DH
thetai=[ang0 0 0 ang3 0 0 0 0 0];%intersecciones en eje z
di=[L(1) L(2) L(3) L(4) L(5) L(6) -L(5) -L(6) L(7)]; 
ai=[0 0 0 0 0 0 0 0 0];%traslados en eje x
alphai=[0 ang1 ang2 0 0 ang4  90 -90-ang4 0];
%Se aplica el DH
mth1=DH(thetai(1),di(1),ai(1),alphai(1));
mth2=DH(thetai(2),di(2),ai(2),alphai(2));
mth3=DH(thetai(3),di(3),ai(3),alphai(3));
mth4=DH(thetai(4),di(4),ai(4),alphai(4));
mth5=DH(thetai(5),di(5),ai(5),alphai(5));
mth6=DH(thetai(6),di(6),ai(6),alphai(6));
mth7=DH(thetai(7),di(7),ai(7),alphai(7));
mth8=DH(thetai(8),di(8),ai(8),alphai(8));
mth9=DH(thetai(9),di(9),ai(9),alphai(9));
%Matrices de transformacipon
M1=mth1;
M2=mth1*mth2;
M3=mth1*mth2*mth3;
M4=mth1*mth2*mth3*mth4;
M5=mth1*mth2*mth3*mth4*mth5;
M6=mth1*mth2*mth3*mth4*mth5*mth6;
M7=mth1*mth2*mth3*mth4*mth5;
M8=mth1*mth2*mth3*mth4*mth5*mth8;
M9=mth1*mth2*mth3*mth4*mth9;
%crear arreglo de valores
 MTH=struct('M1',M1,'M2',M2,'M3',M3,'M4',M4,'M5',M5,'M6',M6,'M7',M7,'M8',M8,'M9',M9);
assignin('base','MTH',MTH);%Se crea una variable global


