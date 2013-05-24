%Steven Kolln AI proj 3
%This is the file for the Minimax Alpha Beta Prune depth limited function.

%Return collumn of where to put the piece

function [rowBest,collumnBest,bestVal]=depthLimited(state)
    tic;
    %Set initial variables to 0
    depth=0;
    collumnBest=0;
    rowBest=0;
    bestVal=-Inf;
    movesArray=[];
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
        %for each possible move that is not a full collumn
        if movesArray(move)~=7
            %assign the oponent to the next move
            s(movesArray(move),move)=2;
            %Find the max value of the move if the opponent went there.
            [v]=Depth_Max_Val(s, -Inf, Inf, depth);
            %If the value you got is > current bestVal, return bestVal
            if v>bestVal;
                bestVal=v;
                rowBest=movesArray(move);
                collumnBest=move;
            end
        end
    end
    toc;
    return;
end