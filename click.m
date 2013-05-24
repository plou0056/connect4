function [ output_args ] = click( src,evt )
%CLICK Summary of this function goes here
%   Detailed explanation goes here
global ax;
global board;
global whoseturn;
point=get(ax,'currentpoint');
point=point(1,1:2);
[r,c]=size(board);
if point(1)>0 & point(1)<c & point(2)>0 & point(2)<r,
    point=floor(point)+1;
    whoseturn=1;
    if board(1,point(1))~=0
        result=0;
        return
    end
    
    %Find where to put the next piece
    
    for j=1:size(board,1),
        if board(j,point(1))~=0
            j=j-1;
            break;
        end
    end
    board(j,point(1))=whoseturn;
    %addpeice_noanim;
    addpeice;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%% You have made your move %%%%%%
    %%%% Now let the computer move %%%%
    %%%% Add code here             %%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    computermove();
    %addpeice_noanim;
    addpeice;
    
end
%disp('clicked');
end

