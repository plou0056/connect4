%Steven Kolln AI proj 3
%This is the file for the terminal function.

%%Determines if the current state is terminal or not
function [bool]= terminal(state)
bool=false;
if check4win(state)~=0
    bool=true;
    return;
else 
    if fullBoard(state)==1
        bool=true;
        return;
    else
        bool=false;
        return;
    end 
end
end