%Steven Kolln AI proj 3
%This is the file for the utility function.
%Returns the utility of a terminal state on minimax
function [number]=utility(state)
number=0;
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