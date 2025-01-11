clc
clear
close all

%% Inputs 
D = 30;               
N = 30;               
Max = 1000;           
FunctionName = 'CF18';  
NumRuns = 30;         

%% Get function details
[lb, ub, dim, fun] = GetFunctionsdetails(FunctionName, D);

%% Arrays to store results from each run
BestFitnessArray = zeros(1, NumRuns);
RunTimeArray = zeros(1, NumRuns);
ConvergenceCurves = zeros(NumRuns, Max);

%% Run Love Evolution Algorithm multiple times
for run = 1:NumRuns
    tic;
    [Bestfitness, Bestposition, Convergencecurve] = NarwhalOptimizer(N, Max, lb, ub, dim, fun);
    RunTimeArray(run) = toc;
    BestFitnessArray(run) = Bestfitness(1); 
    ConvergenceCurves(run, :) = Convergencecurve;
end

if isscalar(lb)
    lb = lb * ones(1, D);  
end
if isscalar(ub)
    ub = ub * ones(1, D);  
end 

%% Calculate averages
AverageBestFitness = mean(BestFitnessArray);
AverageRunTime = mean(RunTimeArray);
AverageConvergenceCurve = mean(ConvergenceCurves, 1);

%% Plot average convergence curve
figure
semilogy(1:Max, AverageConvergenceCurve, 'color', 'r', 'linewidth', 2.5);
title('Average Convergence Curve');
xlabel('Iteration');
ylabel('Best score obtained so far');

%% Display the results
display(['Average running time over 30 runs: ', num2str(AverageRunTime)]);
display(['Average best fitness over 30 runs: ', num2str(AverageBestFitness)]);

%% Plot the 3D surface of the objective function (for the first two dimensions)
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