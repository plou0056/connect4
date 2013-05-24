%Steven Kolln AI proj 3
%This is the file for the utility function in minimax alpha beta prune
%depth limited

%Utility for a minimax alpha beta prune when it is terminal
function [number]=depthUtility(state)
if check4win(state)==2
    number=Inf;
    return;
elseif check4win(state)==1
    number=-Inf;
    return;
else
    number=0;
    return;
end
end