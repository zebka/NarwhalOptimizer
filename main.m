clear
close all
clc

Function_name = 'F15';  


[lb, ub, dim, fobj] = Get_Functions_details(Function_name);


T = 1000;  
N = 30;  


[best_solution, best_fitness, CNVG] = NarwhalOptimizer(N, T, lb, ub, dim, fobj);


figure;
semilogy(CNVG, 'Color', 'r', 'LineWidth', 1.25);
title('Convergence curve');
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight;
grid off;
box on;