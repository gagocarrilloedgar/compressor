%% Cálculo de Compressor
% Sisttemes propulsius d'aernoaus
% Authors: Gago, Edgar
% Date 09/12/2020
%
%% Inputs
%
% Description
% Compression relation and other input parameters
%% CODE
T23=300000;
Inicial = 7; % G--> 7 
x= 4 * Inicial / 26;
G=18+x;                 % [Kg/s] Flujo masico
Pat=1;                  %[Kg/cm2] Presión atmosferica
Tat = 288;              % [K] Temperatura atmosfera
lambda=1.4;
R=286.8;                % J/Kg/K
compute_final_esgrao=0; % Put 0 to compute all the proccess of the project, 1 to only compute the final values of the project

s_c=[0.4,0.4,0.4,0.4,0.4,0.6,0.6,0.6,0.6,0.6,0.8,0.8,0.8,0.8,0.8,1.0,1.0,1.0,1.0,1.0,1.2,1.2,1.2,1.2,1.2];
psi=[0.4,0.5,0.6,0.7,0.8,0.4,0.5,0.6,0.7,0.8,0.4,0.5,0.6,0.7,0.8,0.4,0.5,0.6,0.7,0.8,0.4,0.5,0.6,0.7,0.8];

%Material properties
lambda_al=0.7;
sigma_al=(39/4)*10^6;  %kg/m2
ro_al= 2800;           %kg/m2
grav=9.807;            %m/s

%% Program options
% Selection of the computation type
ops = 2;