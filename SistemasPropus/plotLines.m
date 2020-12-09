%% Cálculo de Compressor
% Sisttemes propulsius d'aernoaus
% Authors: Gago Carrillo, Edgar
% Date 09/12/2020
%
%% plotLines
%
% Description
% Creates a diferentiated colored linear grid for the specific case of
% printing 5 combinations of the function
%% CODE
function plotLines(psi,Ba)

c1=Ba(1:5);
c2=Ba(6:10);
c3=Ba(11:15);
c4=Ba(16:20);
c5=Ba(21:25);
v2=psi(1:5);
hold on
plot(v2,c1);
plot(v2,c2);
plot(v2,c3);
plot(v2,c4);
plot(v2,c5);

end