function [best_solution, best_fitness, CNVG] = NarwhalOptimizer(N, T, lb, ub, dim, fobj)
    % Initialize population
    X = lb + (ub - lb) * rand(N, dim);  % Random positions of narwhals
    fitness = zeros(N, 1);              % Fitness values
    
    % Evaluate initial fitness
    for i = 1:N
        fitness(i) = fobj(X(i, :));
    end
    
    % Find the best solution
    [best_fitness, best_idx] = min(fitness);
    best_solution = X(best_idx, :);
    
    CNVG = zeros(T, 1);
    CNVG(1) = best_fitness;
    
    for t = 1:T
        sigma = 1.65 * (1 - (t / T));
        
        for i = 1:N
            SE = 0.1 / (1 + 2 * norm(X(i, :) - best_solution));
            
            PR = exp(-norm(X(i, :) - best_solution)^2 / (2 * sigma^2));
            SP = SE * PR;
            
            beta = rand() - (1 / (sigma + 1));
            
            delta = beta * abs(SP * best_solution - X(i, :));
            X(i, :) = X(i, :) + delta;
            
            X(i, :) = max(X(i, :), lb);
            X(i, :) = min(X(i, :), ub);
            
            new_fitness = fobj(X(i, :));
            
            if new_fitness < best_fitness
                best_fitness = new_fitness;
                best_solution = X(i, :);
            end
        end
        
        CNVG(t) = best_fitness;
        
        fprintf('Iteration %d, Best Fitness: %e\n', t, best_fitness);
    end
end