%% 4) Parameters selection
s_c4=[0.6,0.8,1.0];
psi4=[0.545,0.61,0.65];

Ba4(i)=atan(0.5*(1.55./(1+1.55*s_c)+1./psi4));
Bb4(i)=atan(1./psi4-tan(Ba4));
Bm4=atan(R./psi4);

tan_Ba4=tan(Ba4);
tan_Bb4=tan(Bb4);
tan_Bm4=(tan_Ba4+tan_Bb4)/2;
cos_Bm4=cos((atan(tan_Bm4)));

a4 = 0.018*tan_Bm4;
b4 = 1;
c4 = (-2*s_c4.*(tan_Ba4-tan_Bb4).*cos_Bm4) + (0.02/2.5)*s_c4.*tan_Bm4 + (0.021*tan_Bm4);

cl14 = - ((b4 + (sqrt((b4^2)-4*a4.*c4)))./(2*a4));
cl24 = - ((b4 - (sqrt((b4^2)-4*a4.*c4)))./(2*a4));
cl4 = zeros(size(cl14));
cd4 = cl4;
p_esg4 = cl4;

for i=1:length(s_c4)
    
    if(cl14(i) > 0 )
        cl4(i) = cl14(i);
    end
    if(cl24(i) > 0 )
        cl4(i) = cl24(i);
    end
    cd4(i) = 0.021 + (0.02/2.5)*s_c4(i)+0.018*(cl4(i)^2);
    p_esg4(i)=1-((cd4(i)/(2*s_c4(i)*(tan_Ba4(i)-tan_Bb4(i))*cos_Bm4(i)))*((2*psi4(i))+(1/(2*psi4(i)))));
    
    if i==1 %Compressor has 8 stages
        p_esg8=1-8*((cd4(i)/(2*s_c4(i)*(tan_Ba4(i)-tan_Bb4(i))*cos_Bm4(i)))*((2*psi4(i))+(1/(2*psi4(i)))));
    end
    
    if i==2 %Compressor has 9 stages
        p_esg9=1-9*((cd4(i)/(2*s_c4(i)*(tan_Ba4(i)-tan_Bb4(i))*cos_Bm4(i)))*((2*psi4(i))+(1/(2*psi4(i)))));
    end
    
    if i==3 %Compressor has 10 stages
        p_esg10=1-10*((cd4(i)/(2*s_c4(i)*(tan_Ba4(i)-tan_Bb4(i))*cos_Bm4(i)))*((2*psi4(i))+(1/(2*psi4(i)))));
    end
end