# Narwhal Optimizer (NO) - A Novel Nature-Inspired Metaheuristic Algorithm

## Overview

This repository contains a MATLAB implementation of the **Narwhal Optimizer (NO)**, a novel nature-inspired metaheuristic algorithm proposed in the paper titled *"Narwhal Optimizer: A Novel Nature-Inspired Metaheuristic Algorithm"* by Seyyid Ahmed Medjahed and Fatima Boukhatem. The NO algorithm is inspired by the hunting behavior of narwhals, specifically their use of echolocation to locate prey. The algorithm mimics the signal emission, propagation, and position updating mechanisms observed in narwhals during their hunting process.

The NO algorithm is designed to solve global optimization problems and has been benchmarked on various functions, demonstrating its effectiveness in avoiding local minima and achieving global optimality.

## Usage

To use the Narwhal Optimizer in your own optimization problems, you can clone this repo and run main.m file:

```bash
run main.m
```
Also You can change FunctionName variable for Testing Basic Functions and CEC2017 Benchmark Test Functions.
for test Use this method :

```bash
Example : 
for tesing CEC2017-F8 :
FunctionName = 'CF8';
And for testing Basic Function like Sphere Function :
FunctionName = 'BF1';
```
After run the optimization algorithm you will see 2 figure. fist figure show the optimization graph and second will show you the function graph.

## Citation

If you use this implementation in your research, please cite the original paper:

```bibtex
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
```
## Contact

For any questions or inquiries, please contact:

- **Seyyid Ahmed Medjahed**: seyyidahmed.medjahed@univ-relizane.dz  
- **Fatima Boukhatem**: fatima.boukhatem@univ-sba.dz
- **Alireza Falahat**: a.falahat@outlook.com (implementation)

---

Thank you for using the Narwhal Optimizer! We hope this implementation helps you in solving complex optimization problems.