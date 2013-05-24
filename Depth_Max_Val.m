%Steven Kolln Ai Project 2
%This is a file for the Depth_Max_Val function for the minimax alpha beta
%prunning depth cut off function.

function [bestVal]=Depth_Max_Val(state,a,b, depth)
    if terminal(state)
        bestVal=depthUtility(state);
        return;
    end
    if cutoff(depth)
        bestVal=cutOffUtility(state);
        return;
    end
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
        %assign the user to the next move
        s(movesArray(move),move)=2;
        %Find the min value of the move if the opponent went there.
        [temp]=Depth_Min_Val(s,a,b,depth+1);
        [bestVal]=max(bestVal,temp);
        %If the value you got is > beta, return bestVal
        if bestVal>=b
            return;
        end
    end
    %Else alpha is the max or alpha or the bestVal
    a=max(a,bestVal);
    end
    return;
end
    

    