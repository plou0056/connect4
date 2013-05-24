%Steven Kolln AI proj 3
%This is the file for the fullBoard function.

%Iterates through the board, if all pieces ~=0, return true;
function [bool]=fullBoard(state)
bool=false;
    for r=1:6
        for c=1:7
            if state(r,c)==0
                return
            end
        end
    end
    bool=true;
    return;        
end