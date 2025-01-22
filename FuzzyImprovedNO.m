function [best_solution, best_fitness, CNVG] = NarwhalOptimizer(N, T, lb, ub, dim, fobj)
    % Initialize population
    X = rand(N,dim).*(ub-lb)+lb;  
    fitness = zeros(N, 1);              
    
    for i = 1:N
        fitness(i) = fobj(X(i, :));
    end
    
    sigma0 =2;
    alpha = 2;

    [best_fitness, best_idx] = min(fitness);
    best_solution = X(best_idx, :);
    
    CNVG = zeros(T, 1);
    CNVG(1) = best_fitness;
    
    for t = 1:T

        sigma = sigma0 ^ (1 - (t / T));
        
        for i = 1:N
            SE = 0.1 / (1 + alpha * norm(X(i, :) - best_solution));
            
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