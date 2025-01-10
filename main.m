clear
close all
clc

Function_name = 'F2';  % choose the function to Optimize


[lb, ub, dim, fobj] = Get_Functions_details(Function_name); % return the Function ( one of 23 basic function)


T = 1000;  % Number of iteration
N = 30; % Number of Narwals (agents) 
NumRuns = 30;         % Number of runs for averaging

for run = 1:NumRuns
    tic;
    [best_solution, best_fitness, CNVG] = NarwhalOptimizer(N, T, lb, ub, dim, fobj);
    RunTimeArray(run) = toc;
    BestFitnessArray(run) = best_fitness; 
    ConvergenceCurves(run, :) = CNVG;
end

AverageBestFitness = mean(BestFitnessArray);
AverageRunTime = mean(RunTimeArray);
AverageConvergenceCurve = mean(ConvergenceCurves, 1);

%% Display the results
display(['Average running time over 30 runs: ', num2str(AverageRunTime)]);
display(['Average best fitness over 30 runs: ', num2str(AverageBestFitness)]);

figure;
semilogy(1:T, AverageConvergenceCurve, 'color', 'r', 'linewidth', 2.5);
title('Average Convergence Curve');
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight;
grid off;
box on;