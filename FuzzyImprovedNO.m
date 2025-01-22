function [best_solution, best_fitness, CNVG] = FuzzyImprovedNO(N, T, lb, ub, dim, fobj)
    fis = readfis('FuzzyFis.fis');
    
    X = rand(N, dim) .* (ub - lb) + lb;
    fitness = zeros(N, 1);
    for i = 1:N
        fitness(i) = fobj(X(i, :));
    end
    
    [best_fitness, best_idx] = min(fitness);
    best_solution = X(best_idx, :);
    CNVG = zeros(T, 1);
    CNVG(1) = best_fitness;
    
    for t = 1:T
        distances = sqrt(sum((X - best_solution).^2, 2));
        Diversity = std(distances) / (max(distances) + eps);
        Diversity = max(0, min(1, Diversity)); % ?????????? ?? [0,1]
        
        if t > 1
            Fitness_Improvement = (CNVG(t-1) - best_fitness) / (CNVG(t-1) + eps);
        else
            Fitness_Improvement = 0;
        end
        Fitness_Improvement = max(0, min(1, Fitness_Improvement)); % ??????????
        
        alpha = evalfis([Diversity, Fitness_Improvement], fis);
        
        for i = 1:N
            SE = 0.1 / (1 + alpha^(rand() + alpha) * norm(X(i, :) - best_solution));
            PR = exp(-norm(X(i, :) - best_solution)^2 / 2);
            SP = SE * PR;
            beta = rand() - 0.5;
            delta = beta * abs(SP * best_solution - X(i, :));
            X(i, :) = max(min(X(i, :) + delta, ub), lb);
            
            new_fitness = fobj(X(i, :));
            if new_fitness < best_fitness
                best_fitness = new_fitness;
                best_solution = X(i, :);
            end
        end
        
        CNVG(t) = best_fitness;
        fprintf('Iteration %d, Best Fitness: %e, Alpha: %.2f\n', t, best_fitness, alpha);
    end
end