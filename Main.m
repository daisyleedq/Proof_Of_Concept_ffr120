clear all;
clc;

% simulation parameters
nPreyAgents = 100;
nPreyNeighbors = 6; % https://doi.org/10.1016/j.anbehav.2008.02.004
maxPreyTurningAngle = pi/5;
preySpeed=1;

nPredatorAgents = 1;
nPredatorNeighbors = 12;
maxPredatorTurningAngle = pi/10;
predatorSpeed = 1.5;

deltaT = 1;
maxTime = 2000;
fieldSize = 100;
captureDistance = 1;
nCompetitions = 5;

% neural network parameters
nPreyNNInputs = 3*(nPreyNeighbors + nPredatorAgents);
nPreyNNOutputs = 1;
nPreyNNHidden = floor(sqrt(nPreyNNInputs * nPreyNNOutputs));

nPredatorNNInputs = 3*(nPredatorNeighbors + nPredatorAgents - 1);
nPredatorNNOutputs = 1;
nPredatorNNHidden = floor(sqrt(nPredatorNNInputs * nPredatorNNOutputs));

% genetic algorithm parameters
populationSize = 1;
selectionParameter = (sqrt(5)-1)/2;
mutationFrequency = 1; % per chromosome
mutationDistance = 5;

%------------------------------------------------------------------------------
%chromosome length
preyChromosomeLegth = nPreyNNOutputs + nPreyNNOutputs*nPreyNNHidden + nPreyNNHidden + nPreyNNHidden*nPreyNNInputs;
predatorChromosomeLength = nPredatorNNOutputs + nPredatorNNOutputs*nPredatorNNHidden + nPredatorNNHidden + nPredatorNNHidden*nPredatorNNInputs;

%chromosome initialization

preyNN = InitializePopulation(populationSize, nPreyNNInputs, nPreyNNHidden, nPreyNNOutputs, mutationDistance);
predatorNN = InitializePopulation(populationSize, nPredatorNNInputs, nPredatorNNHidden, nPredatorNNOutputs, mutationDistance);


[preyT1, preyW12, preyT2, preyW23] = DecodeChromosome(preyNN, nPreyNNInputs, nPreyNNHidden, nPreyNNOutputs);
[predatorT1, predatorW12, predatorT2, predatorW23] = DecodeChromosome(predatorNN, nPredatorNNInputs, nPredatorNNHidden, nPredatorNNOutputs);

Compete(preyNN, ...
                              nPreyAgents, nPreyNeighbors, maxPreyTurningAngle,preySpeed, ...
                              nPreyNNInputs, nPreyNNHidden, nPreyNNOutputs, ...
                              predatorNN, ...
                              nPredatorAgents, nPredatorNeighbors, maxPredatorTurningAngle, predatorSpeed, ...
                              nPredatorNNInputs, nPredatorNNHidden, nPredatorNNOutputs, ...
                              deltaT, maxTime, fieldSize, captureDistance);
                          
