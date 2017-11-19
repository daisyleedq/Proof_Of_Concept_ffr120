#Based on Lukas code! It will be deleted when new branch in lukas repository is created. 

Simulation and visualization of prey and predators model based on random neural network

Problems and Results:
1.mostly circle track of prey and predators(uncomment 'clf;' in compete.m file)
2.When I run original code in R2017a original code has some errors 'Error in SteadyStateGAUpdate (line 8) newfitnesses = fitnesses(1:populationSize-2,:);' so I could not get trined neural network

Reason maybe:
too slow speed, so the positions didn't change a lot, so the weights of distance don't have big influence in the output. but high speed will cause the predator cross the boundary which need to be discussed later.

Request:
If you could run the code without errors , please use trained neural network to simulate and visualize it.







ffr120group23
A predator-prey model demonstrating an evolutionary arms race with respect to flocking behavior.

This effort is undertaken as a final group project for the Simulations of Complex Systems class offered at Chalmers Institute of Technology in Gothenburg, Sweden.

This model employs agent-based simulation to investigate collective flocking behavior under a simple predator-prey incentive: the predator shall catch the prey quickly, and the prey shall not be caught. The control behavior is determined by neural networks acting in each agent, and these neural networks are evolved over time using a genetic algorithm. In this way, an "evolutionary arms race" takes place between predators and prey.
