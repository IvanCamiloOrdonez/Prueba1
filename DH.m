function A=DH(theta,d,a,alpha) %Matriz de Transformacion Homogenea
A=[cosd(theta) -sind(theta)*cosd(alpha) sind(alpha)*sind(theta) a*cosd(theta);
   sind(theta) cosd(theta)*cosd(alpha) -cosd(theta)*sind(alpha) a*sind(theta);
   0           sind(alpha)                    cosd(alpha)             d;
   0                0                              0                  1];
