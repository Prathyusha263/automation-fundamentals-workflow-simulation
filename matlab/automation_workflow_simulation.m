% Automation Workflow Simulation (Manual vs Automated) - Demo
% Author: Prathyusha Pentam
% Description: Simulates task processing time and compares manual vs automated workflow.

rng(1);                % reproducibility
nTasks = 200;           % number of tasks

% Simulated time per task (seconds)
manualTime = max(1, normrnd(8, 2, [nTasks,1]));     % manual processing
autoTime   = max(0.5, normrnd(3, 1, [nTasks,1]));   % automated processing

totalManual = sum(manualTime);
totalAuto   = sum(autoTime);

speedup = totalManual / totalAuto;
timeSavedPct = (1 - (totalAuto/totalManual)) * 100;

fprintf("Tasks: %d\n", nTasks);
fprintf("Total time (Manual): %.2f sec\n", totalManual);
fprintf("Total time (Automated): %.2f sec\n", totalAuto);
fprintf("Speedup: %.2fx\n", speedup);
fprintf("Time saved: %.2f%%\n", timeSavedPct);

