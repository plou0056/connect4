%Steven Kolln AI proj 2
%This is the file for the miniMax function.

%Return collumn of where to put the piece
function [rowBest, collumnBest, bestVal]=miniMax(state)
tic;
bestVal=-Inf;
collumnBest=0;
rowBest=0;
movesArray=[];
if terminal(state)
    bestVal=utility(state);
    return;
end
%The next nested for loop takes all possible moves that are next and 
%puts them into an array called moves array.
for c=1:7
    for r=1:6
        if state(7-r,c)==0
            movesArray=[movesArray;7-r];
            break;
        end
        if 7-r==1
            movesArray=[movesArray;7];
            break;
        end
            
    end
end
%for all collumn
for move=1:7
    s=state;
    if movesArray(move)~=7
        %assign the other player to the next move
        s(movesArray(move),move)=2;
        %Find the min value of the move if the opponent went there.
        [v]=Min(s);
        %if the new value is greater than the previous return the new one
        if v>bestVal
            bestVal=v;
            rowBest=movesArray(move);
            collumnBest=move;
        end
    end
end
toc;
return;

end



