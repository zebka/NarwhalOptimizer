# NarwhalOptimizer
Narwhal Optimizer (NO) - A Novel Nature-Inspired Metaheuristic Algorithm
Overview

This repository contains the implementation of the Narwhal Optimizer (NO), a novel nature-inspired metaheuristic algorithm proposed in the paper titled "Narwhal Optimizer: A Novel Nature-Inspired Metaheuristic Algorithm" by Seyyid Ahmed Medjahed and Fatima Boukhatem. The NO algorithm is inspired by the hunting behavior of narwhals, specifically their use of echolocation to locate prey. The algorithm mimics the signal emission, propagation, and position updating mechanisms observed in narwhals during their hunting process.

The NO algorithm is designed to solve global optimization problems and has been benchmarked on 13 well-known functions, including unimodal, multimodal, and fixed-dimension multimodal functions. The results demonstrate its effectiveness in avoiding local minima and achieving global optimality.
Repository Structure

    /src: Contains the Python implementation of the Narwhal Optimizer algorithm.

        narwhal_optimizer.py: The main implementation of the NO algorithm.

        benchmark_functions.py: A collection of benchmark functions used for testing the algorithm.

    /results: Contains the results of the algorithm's performance on the benchmark functions.

        results_summary.csv: A summary of the results, including average, standard deviation, and best values for each benchmark function.

        convergence_plots/: Visualizations of the convergence curves for each benchmark function.

    /tests: Contains unit tests to validate the correctness of the implementation.

        test_narwhal_optimizer.py: Unit tests for the NO algorithm.

    /docs: Documentation related to the algorithm and its implementation.

        algorithm_description.md: A detailed explanation of the NO algorithm and its mathematical model.

        usage_guide.md: A guide on how to use the NO algorithm for optimization problems.

    /examples: Example scripts demonstrating how to use the NO algorithm on different optimization problems.

        example_unimodal.py: Example usage of NO on unimodal benchmark functions.

        example_multimodal.py: Example usage of NO on multimodal benchmark functions.

        example_real_world.py: Example usage of NO on a real-world optimization problem (Three-bar truss design).

    README.md: This file, providing an overview of the repository and its contents.

Installation

To use the Narwhal Optimizer, clone this repository and install the required dependencies:
bash
Copy

git clone https://github.com/your-username/narwhal-optimizer.git
cd narwhal-optimizer
pip install -r requirements.txt

Usage

To use the Narwhal Optimizer in your own optimization problems, you can import the NarwhalOptimizer class from the narwhal_optimizer.py file. Below is an example of how to use the algorithm to optimize a benchmark function:
python
Copy

from narwhal_optimizer import NarwhalOptimizer
from benchmark_functions import sphere_function

# Define the objective function (e.g., Sphere function)
def objective_function(x):
    return sphere_function(x)

# Initialize the Narwhal Optimizer
no = NarwhalOptimizer(
    objective_function=objective_function,
    dim=30,  # Dimension of the problem
    lb=-100,  # Lower bound of the search space
    ub=100,   # Upper bound of the search space
    population_size=30,
    max_iterations=500
)

# Run the optimization
best_solution, best_fitness = no.optimize()

print("Best Solution:", best_solution)
print("Best Fitness:", best_fitness)

Benchmark Functions

The repository includes implementations of 13 benchmark functions commonly used in optimization literature. These functions are categorized into unimodal, multimodal, and fixed-dimension multimodal functions. You can find the list of functions in the benchmark_functions.py file.
Results

The performance of the NO algorithm has been evaluated on the benchmark functions, and the results are summarized in the /results directory. The convergence plots for each function are also provided to visualize the algorithm's performance over iterations.
Contributing

Contributions to this repository are welcome! If you have suggestions for improvements, bug fixes, or additional features, please feel free to open an issue or submit a pull request.
Citation

If you use this implementation in your research, please cite the original paper:
bibtex
Copy

@article{medjahed2024narwhal,
  title={Narwhal Optimizer: A Novel Nature-Inspired Metaheuristic Algorithm},
  author={Medjahed, Seyyid Ahmed and Boukhatem, Fatima},
  journal={International Arab Journal of Information Technology},
  volume={21},
  number={3},
  pages={1--9},
  year={2024},
  doi={10.34028/iajit/21/3/6}
}

License

This project is licensed under the MIT License. See the LICENSE file for more details.
Contact

For any questions or inquiries, please contact:

    Seyyid Ahmed Medjahed: seyyidahmed.medjahed@univ-relizane.dz

    Fatima Boukhatem: fatima.boukhatem@univ-sba.dz
