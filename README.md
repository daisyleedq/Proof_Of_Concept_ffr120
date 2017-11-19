#Based on Lukas code! It will be deleted when new branch in lukas repository is created. 

Simulation and visualization of prey and predators model based on random neural network

Problems and Results:
1.mostly circle track of prey and predators(uncomment 'clf;' in compete.m file)
2.When I run original code in R2017a original code has some errors 'Error in SteadyStateGAUpdate (line 8) newfitnesses = fitnesses(1:populationSize-2,:);' so I could not get trined neural network

Reason maybe:
too slow speed, so the positions didn't change a lot, so the weights of distance don't have big influence in the output. but high speed will cause the predator cross the boundary which need to be discussed later.

Request:
If you could run the code without errors , please use trained neural network to simulate and visualize it.

