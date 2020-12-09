%% 4.1 Recomputing of all the values with the most optimum number of stages

%% Cálculo de Compressor
% Sistemes propulsius d'aernoaus
% Authors: Gago Carrillo, Edgar
% Date 09/12/2020
%
%% core
%
% Description
% Recomputing of all the values with the most optimum number of stages

s_c=0.6;
psi=0.544;
%1
Ba=atan(1/2*(1.55/(1+1.55*s_c)+1/psi));
Bb=atan(1/psi-tan(Ba));
Bm=atan(R/psi);

tan_Ba=tan(Ba);
tan_Bb=tan(Bb);
tan_Bm=(tan_Ba+tan_Bb)/2;
cos_Bm=cos((atan(tan_Bm)));

%2
a = 0.018*tan_Bm;
b = 1;
c = (-2*s_c*(tan_Ba-tan_Bb)*cos_Bm) + (0.02/2.5)*s_c*tan_Bm + (0.021*tan_Bm);

cl1 = - ((b + (sqrt((b^2)-4*a*c)))/(2*a));
cl2 = - ((b - (sqrt((b^2)-4*a*c)))/(2*a));
if(cl1 > 0 )
    cl = cl1;
end
if(cl2 > 0 )
    cl = cl2;
end
cd = 0.021 + (0.02/2.5)*s_c+0.018*(cl^2);

%3
p_esg=1-((cd/(2*s_c*(tan_Ba-tan_Bb)*cos_Bm))*((2*psi)+(1/(2*psi))));

%4
Tat=288;
M_rel_a=0.8;
Numerator=M_rel_a^2*lambda*R*Tat;
cp=1003.8;
Num2=(M_rel_a^2*lambda*R)/(2*cp);

Vz=sqrt((Numerator/((1/((cos(Ba))^2))+(Num2/cos(Bb)^2))));

%5
u=Vz/psi;

%6
tau_esg=u*Vz*(tan_Ba-tan_Bb);

%7
ri_re=((u^2)-((sigma_al*grav)/(2*lambda_al*ro_al)))/((u^2)+((sigma_al*grav)/(2*lambda_al*ro_al)));

%8
Va= sqrt(((((Vz/cos(Ba))*sin(Ba))-u)^2)+(Vz^2));
Ta=Tat-((Va^2)/(2*cp));
Pa=grav*10000/(1+((Vz^2)/(2*R*Ta*((cos(Ba))^2))));
rho_a=Pa/(R*Ta);
re=sqrt(G/(pi*(1-((ri_re)^2))*Vz*rho_a));
ri=ri_re*re;
rm=(re+ri)/2;
h=re-ri;
%9
N=(60*u)/(2*pi*rm);
