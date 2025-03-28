clear; 
clc; 
close all;
%%
D = 30;               
N = 30;               
Max = 1000;           
FunctionName = 'BF1';  % Choose between BF... as Basic Functions {1-23} and CF... as CEC2017 Functions
NumRuns = 2;         
[lb, ub, dim, fun] = GetFunctionsdetails(FunctionName, D);

FBestFitnessArray = zeros(1, NumRuns);
FRunTimeArray = zeros(1, NumRuns);
FConvergenceCurves = zeros(NumRuns, Max);
BestFitnessArray = zeros(1, NumRuns);
RunTimeArray = zeros(1, NumRuns);
ConvergenceCurves = zeros(NumRuns, Max);

for run = 1:NumRuns
    tic;
    [Bestfitness, Bestposition, Convergencecurve] = FuzzyImprovedNO(N, Max, lb, ub, dim, fun);
    FRunTimeArray(run) = toc;
    FBestFitnessArray(run) = Bestposition(); 
    FConvergenceCurves(run, :) = Convergencecurve;
end
for run = 1:NumRuns
    tic;
    [Bestfitness, Bestposition, Convergencecurve] = NarwhalOptimizer(N, Max, lb, ub, dim, fun);
    RunTimeArray(run) = toc;
    BestFitnessArray(run) = Bestposition(); 
    ConvergenceCurves(run, :) = Convergencecurve;
end


if isscalar(lb)
    lb = lb * ones(1, D);  
end
if isscalar(ub)
    ub = ub * ones(1, D);  
end 

FAverageBestFitness = mean(FBestFitnessArray);
FAverageRunTime = mean(FRunTimeArray);
FAverageConvergenceCurve = mean(FConvergenceCurves, 1);

AverageBestFitness = mean(BestFitnessArray);
AverageRunTime = mean(RunTimeArray);
AverageConvergenceCurve = mean(ConvergenceCurves, 1);

display('------------------------Results--------------------------');
display(['Average running time over 30 runs for Fuzzy NO: ', num2str(FAverageRunTime)]);
display(['Average best fitness over 30 runs for Fuzzy NO: ', num2str(FAverageBestFitness)]);
display('---------------------------------------------------------');
display(['Average running time over 30 runs for main NO: ', num2str(AverageRunTime)]);
display(['Average best fitness over 30 runs for main NO: ', num2str(AverageBestFitness)]);


figure
semilogy(1:Max, FAverageConvergenceCurve, 'color', 'r', 'linewidth', 2.5);
hold on;
semilogy(1:Max, AverageConvergenceCurve, 'color', 'b', 'linewidth', 2.5);
legend('FuzzyImprovedNO','NO');
title('Average Convergence Curve');
xlabel('Iteration');
ylabel('Best score');

%{
if dim >= 2 && numel(lb) >= 2 && numel(ub) >= 2
    figure
    x1 = linspace(lb(1), ub(1), 100);
    x2 = linspace(lb(2), ub(2), 100);
    [X1, X2] = meshgrid(x1, x2);
    Z = zeros(size(X1));
    
    for i = 1:size(X1, 1)
        for j = 1:size(X1, 2)
            X = zeros(1, D);
            X(1) = X1(i, j);
            X(2) = X2(i, j);
            Z(i, j) = fun(X);
        end
    end
    
    surf(X1, X2, Z);
    title('3D Surface Plot of the Objective Function');
    xlabel('x_1');
    ylabel('x_2');
    zlabel('f(x_1, x_2)');
    colorbar;
else
    warning('Cannot plot 3D surface: The problem dimension or bounds are insufficient.');
end
%}