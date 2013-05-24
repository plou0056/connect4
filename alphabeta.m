%Steven Kolln AI proj 3
%This is the file for the Alpha Beta Prune function.

%Return collumn of where to put the piece
function [rowBest,collumnBest,bestVal]=alphabeta(state)
tic;
%The move of where to go is initially set to 0, if not best value found it
%will go to a random location.
collumnBest=0;
rowBest=0;
%bestVal is -Inf untill a better max is found.
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
        %assign the cpu to the next move
        s(movesArray(move),move)=2;
        %Find the max value of the move for the oponents possible moves
        [v]=Max_Val(s,-Inf,Inf,0);
        %If the value you got is better than the previous best go there.
        if v>bestVal
            bestVal=v;
            rowBest=movesArray(move);
            collumnBest=move;
            toc;
            return;
        end
    end
end
toc;
end

