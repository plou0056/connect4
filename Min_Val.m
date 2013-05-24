%Steven Kolln Ai Project 2
%This is a file for the Min_Val function for the alpha beta prunning
%function 


function [bestVal]=Min_Val(state, a, b, depth)
    if terminal(state)
        bestVal=utility(state);
        return;
    end
    bestVal=Inf;
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
        %assign the other player to the next move
        s(movesArray(move),move)=1;
        %Find the max value of the move if the opponent went there.
        [temp]=Max_Val(s,a,b,depth+1);
        [bestVal]=min(bestVal,temp);
        %If the value you got is < a, return bestVal
    if bestVal<=a
        return;
    end
    % if not, b is now the min of b or bestVal
    b=min(b,bestVal);
    end
    end
    return;
end