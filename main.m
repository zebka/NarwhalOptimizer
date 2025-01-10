clear
close all
clc

Function_name = 'F1';  % choose the function to Optimize


[lb, ub, dim, fobj] = Get_Functions_details(Function_name); % return the Function ( one of 23 basic function)


T = 1000;  % Number of iteration
N = 30; % Number of Narwals (agents) 


[best_solution, best_fitness, CNVG] = NarwhalOptimizer(N, T, lb, ub, dim, fobj);


figure;
semilogy(CNVG, 'Color', 'r', 'LineWidth', 1.25);
title('Convergence curve');
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight;
grid off;
box on;