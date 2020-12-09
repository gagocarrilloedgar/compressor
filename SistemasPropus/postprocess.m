%% Cálculo de Compressor
% Sisttemes propulsius d'aernoaus
% Authors: Gago, Edgar
% Date 09/12/2020
%
%% postprocess
%
% Description
% Plot of all the graphics and data handling if necessary 
%% CODE
% 3.1)
figure(1);
subplot(1,2,1);

plotLines(psi,Ba);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2');
title(' $\beta_a$ $[^{\circ}]$ - $\psi$');
ylabel('$\beta_a$ $[^{\circ}]$');
xlabel('$\psi$');

% Plotting beta b
subplot(1,2,2);
plotLines(psi,Bb);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2');
title(' $\beta_b$ $[^{\circ}]$ - $\psi$');
ylabel('$\beta_b$ $[^{\circ}]$');
xlabel('$\psi$');

saveas(gcf,'Figures/Ba_Bb_psi.png');


%% 3.2)
%Plotting Cl
figure(2);
subplot(1,2,1);
plotLines(psi,cl);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"northwest");
title(' Cl - $\psi$');
ylabel(' Cl ');
xlabel('$\psi$');

%Plotting Cd
subplot(1,2,2);
plotLines(psi,cd);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"northwest");
title(' Cd - $\psi$');
ylabel('Cd');
xlabel('$\psi$');

saveas(gcf,'Figures/Cl_Cd_psi.png');

%% 3.3) 
figure (3);
plotLines(psi,p_esg);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2',"Location",'southeast');
title(' $\eta_{esg}$ - $\psi$');
ylabel('$\eta_{esg}$');
xlabel('$\psi$');
saveas(gcf,'Figures/performance.png');

%% 3.4)
figure(4);
plotLines(psi,Vz);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"southeast");
title(' Vz - $\psi$');
ylabel('Vz [m/s]');
xlabel('$\psi$');
saveas(gcf,'Figures/Vz.png');

%% 3.5)
figure(5);
plotLines(psi,u);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2');
title(' u - $\psi$');
ylabel('u [m/s]');
xlabel('$\psi$');
saveas(gcf,'Figures/u.png');

%% 3.6)
figure(6)
plotLines(psi,tau_esg);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"best");
title(' $\tau_{esg}$ - $\psi$');
ylabel('$\tau_{esg}$ [J/Kg]');
xlabel('$\psi$');

saveas(gcf,'Figures/tau.png');

%% 3.7)
figure(7);
plotLines(psi,ri_re);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2');
title(' $r_i / r_e$ - $\psi$');
ylabel('$r_i / r_e$');
xlabel('$\psi$');
saveas(gcf,'Figures/ri_re_frac.png');

%% 3.8)
figure(8)
plotLines(psi,re);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"best");
title(' $r_e$ - $\psi$');
ylabel('$r_e$');
xlabel('$\psi$');
saveas(gcf,'Figures/re.png');

figure(9);
plotLines(psi,ri);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location',"best");
title(' $r_i$ - $\psi$');
ylabel('$r_i$ ');
xlabel('$\psi$');
saveas(gcf,'Figures/ri.png');

figure(10);
plotLines(psi,rm);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location','best');
title(' $r_m$ - $\psi$');
ylabel('$r_m$ ');
xlabel('$\psi$');
saveas(gcf,'Figures/rm.png');

figure(11);
plotLines(psi,h);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location','best');
title(' h - $\psi$');
ylabel(' h ');
xlabel('$\psi$');

saveas(gcf,'Figures/h.png');

%% 3.9) 
figure(12);
plotLines(psi,N);
legend('S/C = 0.4','S/C = 0.6','S/C = 0.8','S/C = 1.0','S/C = 1.2','Location','best');
title(' N - $\psi$');
ylabel(' N ');
xlabel('$\psi$');
saveas(gcf,'Figures/N.png');




