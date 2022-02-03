function [F0,F1,F2] = Angle(xf,yf,zf)
if xf>0 && yf>0  %primer
    F0=atand(yf/xf)
    F0=90+F0;
end
if xf<0 && yf>0  %segundo
    F0=abs(atand(xf/yf))+180
end
if xf<0 && yf<0  %tercer
    F0=abs(atand(yf/xf))+270
end

if xf>0 && yf<0  %cuarto
    F0=abs(atand(xf/yf))
end
if xf==0 && yf==0
    F0=-90;
end
R=sqrt(xf^2+(yf)^2)
dz=35-zf;
d=R^2+dz^2
F2=acosd((d-57.4^2-(49+16+50)^2)/(2*57.4*(49+16+50)))

    alpha=atand(dz/R)
    beta=asind((49+16+50)*sind(180-F2)/sqrt(d))
    F1= (-beta+alpha)+90
end

