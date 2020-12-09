%% Cálculo de Compressor
% Sisttemes propulsius d'aernoaus
% Authors: Gago, Edgar
% Date 09/12/2020
%
%% main
%
% Description
% Core of the program from where all the other scripts will be called
%% CODE

clear; close all; clc;

% Definition of the graphic interpreter as latex in order to match it with
% the report text font.

set(groot, 'DefaultLegendInterpreter', 'latex');
set(groot, 'DefaultTextInterpreter',"latex");

%% Inptus
Inputs

%% Core
switch ops
    case 1
        core2
    case 2
        core3
    otherwise
        core
        postprocess
end


