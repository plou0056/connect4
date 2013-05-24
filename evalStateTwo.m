function [bestVal]=evalStateTwo(state)
    board=state;
    bestVal=0;
    move=true;
    Q=[];
    %Check for three or two in a row by human
    
    %Check for three or two in a row by the owner
    
    %Function Description:
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %What is going to happen is that this function will itterate over the
    %entire board. For our first part of this function, ~lines 1-750, the
    %function will go to each piece that is the owners and then will check
    %at each piece if the the owner can win on the next move, if so a +50
    %utility is added. For example, this means that if we are only checking
    %horizontally from the bottom left corner of the board, it is possible
    %that a utility of 150 can be returned just from checking one piece
    %horizontally if it can win in any of the pieces to the left.
    
    
    %For the second part, the same evaluation is done except this function
    %checks only if it possible if you can win. This means that if I have a
    %piece and I am checking pieces horizontally, if all three pieces next
    %to mine do not have a piece, I have a chance of winning. a +1 utility
    %is added for these situations.
    if move
        for r=1:6
            for c=1:7
                Q(1)=r;
                Q(2)=c;
                if board(r,c)==2
                    if move
                        %Q
                    switch c
                        case 1 %%%%%%%%%%%%%%%%%%%%%%%%
                            if r==6
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c+1)==2 & board(r-2, c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-3, c+3)==2 & board(r-2, c+2)==2 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                   %board(r-1,c+1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c+1)==2 & board(r-3, c+3)==2 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                   %board(r-2,c+2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end  
                            end
                            if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c+1)==2 & board(r-2,c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-3,c+3)==2 & board(r-2,c+2)==2 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c+1)==2 & board(r-3,c+3)==2 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+50;
                                
                            end
                        case 7 %%%%%%%%%%%%%%%%%%%%%%%%%%
                            if r==6
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c-3)==0 %Makes sense
                                   %board(r,c-3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c-1)==2 & board(r-2, c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-3, c-3)==2 & board(r-2, c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                   %board(r-1,c-1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c-1)==2 & board(r-3, c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                   %board(r-2,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+50;
                                    
                                end  
                            end
                            if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+50;
                                
                            end
                             if r>3 & board(r-3,c-3)==2 & board(r-2,c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-3,c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+50;
                                
                            end
                        otherwise %%%%%%%%%%%%%%%%%%%%%
                            if c==2 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               %disp('1');
                               if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+3)=2;
                                   
                               end
                                %disp('2')
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('3');
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                %disp('4');
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('5');
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c+2)==2 & board(r,c+1)==2 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('6');
                                if board(r-1, c+1)==2 & board(r-2, c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   %board(r-3,c+3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                %disp('7')
                            else % if not r=6
                                %disp('1')
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+2)==2 & board(r,c+1)==2 & board(r,c-1)==0 & board(r+1, c-1)~=0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('2');
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('3')
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('4')
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('5')
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('6')
                                if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if r>3 & r <5 & board(r+1,c+1)==2 & board(r+2, c+2)==2 & board(r,c-1)~=0 & board(r+1,c-1)==0 %makes sense 
                                    %board(r-1,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                             end
                            %disp('7')
                            if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            %disp('8')
                            if r>3 & board(r-1,c+1)==2 & board(r-2,c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+50;
                                
                            end
                            %disp('9')
                            if r>3 & board(r-3,c+3)==2 & board(r-2,c+2)==2 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            %disp('10')
                            if r>3 & board(r-1,c+1)==2 & board(r-3,c+3)==2 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            end
                            if c==6 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c-3)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-3)=2;
                                   
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-1)=2;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r,c-2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-2)=2;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c-2)==2 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-1)=2;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c-1)==2 & board(r,c-2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-2)=2;
                                   
                                end
                                if board(r-1, c-1)==2 & board(r-2, c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==2 & board(r,c-2)==2 & board(r+1,c-3)~=0 & board(r,c-3)==0 %makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if r==5 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r+1,c+1)==0 %makes sense
                                    %board(r+1,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c+1)==0 & board(r+1,c+1)~=0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+1)==2 & board(r,c-1)==2 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+1)==2 & board(r,c-2)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                             end
                                if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+50;
                                
                            end
                             if r>3 & board(r-3,c-3)==2 & board(r-2,c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-3,c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            end    
                            if c==3 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                                 %disp('1');
                               if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c+3)==0 %Makes sense
                                   %disp('enter')
                                   bestVal=bestVal+50;
                                   %board(r,c+3)=2;
                                   
                               end
                                %disp('2')
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('3')
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('4')
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('5')
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                %disp('6')
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('7');
                                if board(r-1, c+1)==2 & board(r-2, c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   board(r-3,c+3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                %disp('8')
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('9');
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('10');
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('11')
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('12');
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp ('13')
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('14');
                                if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                    %disp('15');
                                if r>3 & board(r-1,c+1)==2 & board(r-2,c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                    %board(r-3,c+3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                %disp('16');
                             end %end of r==6 will occur no matter what
                             if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c+1)==2 & board(r-2,c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-3,c+3)==2 & board(r-2,c+2)==2 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c+1)==2 & board(r-3,c+3)==2 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            end
                            if c==5
                            if r==6
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c-3)==0 %Makes sense
                                   %board(r,c-3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r,c+1)==0 %Makes sense
                                   %board(r,c+1)=1;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c+2)==0 %Makes sense
                                   %board(r,c+2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c-1)==2 & board(r-2, c+2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-3, c-3)==2 & board(r-2, c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                   %board(r-1,c-1)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                                if board(r-1, c-1)==2 & board(r-3, c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                   %board(r-2,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                if board(r,c-1)==2 & board(r,c-2)==2 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-2)==2 & board(r,c-3)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c-3)==2 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c-2)==0 & board(r+1,c-2)~=0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            end
                            if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+50;
                                
                            end
                             if r>3 & board(r-3,c-3)==2 & board(r-2,c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-3,c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            end
                            if c==4 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               if board(r,c+1)==2 & board(r,c+2)==2 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+3)=2;
                                   
                                end
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+50;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r-1, c+1)==2 & board(r-2, c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   %board(r-3,c+3)=2;
                                   bestVal=bestVal+50;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==2 & board(r,c+2)==2 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+2)==2 & board(r,c+3)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c+1)==2 & board(r,c+3)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c+1)==2 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if board(r,c-1)==2 & board(r,c+2)==2 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                                if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+50;
                                    
                                    end
                                if r>3 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                    %board(r-3,c-3)=2;
                                    bestVal=bestVal+50;
                                    
                                end
                            end
                            if r>3 & board(r-1,c)==2 & board(r-2, c)==2 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c+1)==2 & board(r-2,c+2)==2 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-3,c+3)==2 & board(r-2,c+2)==2 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-3,c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-2,c-2)==2 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-3,c-3)==2 & board(r-2,c-2)==2 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+50;
                                
                            end
                            if r>3 & board(r-1,c-1)==2 & board(r-3,c-3)==2 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+50;
                                
                            end
                            end


                    end
                    end
                end
                %fprintf(strcat(' ',num2str(board(r,c))))
            end
        end

    end
    Q=[];
if move
        for r=1:6
            for c=1:7
                Q(1)=r;
                Q(2)=c;
                if board(r,c)==2
                    if move
                        %Q
                    switch c
                        case 1 %%%%%%%%%%%%%%%%%%%%%%%%
                            if r==6
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c+1)==0 & board(r-2, c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-3, c+3)==0 & board(r-2, c+2)==0 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                   %board(r-1,c+1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c+1)==0 & board(r-3, c+3)==0 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                   %board(r-2,c+2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end  
                            end
                            if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c+1)==0 & board(r-2,c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-3,c+3)==0 & board(r-2,c+2)==0 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c+1)==0 & board(r-3,c+3)==0 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+1;
                                
                            end
                        case 7 %%%%%%%%%%%%%%%%%%%%%%%%%%
                            if r==6
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c-3)==0 %Makes sense
                                   %board(r,c-3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c-1)==0 & board(r-2, c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-3, c-3)==0 & board(r-2, c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                   %board(r-1,c-1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c-1)==0 & board(r-3, c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                   %board(r-2,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+1;
                                    
                                end  
                            end
                            if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+1;
                                
                            end
                             if r>3 & board(r-3,c-3)==0 & board(r-2,c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-3,c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+1;
                                
                            end
                        otherwise %%%%%%%%%%%%%%%%%%%%%
                            if c==2 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               %disp('1');
                               if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+3)=2;
                                   
                               end
                                %disp('2')
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('3');
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                %disp('4');
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('5');
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c+2)==0 & board(r,c+1)==0 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('6');
                                if board(r-1, c+1)==0 & board(r-2, c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   %board(r-3,c+3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                %disp('7')
                            else % if not r=6
                                %disp('1')
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+2)==0 & board(r,c+1)==0 & board(r,c-1)==0 & board(r+1, c-1)~=0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('2');
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('3')
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('4')
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('5')
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('6')
                                if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if r>3 & r <5 & board(r+1,c+1)==0 & board(r+2, c+2)==0 & board(r,c-1)~=0 & board(r+1,c-1)==0 %makes sense 
                                    %board(r-1,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                             end
                            %disp('7')
                            if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            %disp('8')
                            if r>3 & board(r-1,c+1)==0 & board(r-2,c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+1;
                                
                            end
                            %disp('9')
                            if r>3 & board(r-3,c+3)==0 & board(r-2,c+2)==0 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            %disp('10')
                            if r>3 & board(r-1,c+1)==0 & board(r-3,c+3)==0 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            end
                            if c==6 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c-3)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-3)=2;
                                   
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-1)=2;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r,c-2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-2)=2;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c-2)==0 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-1)=2;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c-1)==0 & board(r,c-2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-2)=2;
                                   
                                end
                                if board(r-1, c-1)==0 & board(r-2, c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==0 & board(r,c-2)==0 & board(r+1,c-3)~=0 & board(r,c-3)==0 %makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if r==5 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r+1,c+1)==0 %makes sense
                                    %board(r+1,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c+1)==0 & board(r+1,c+1)~=0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+1)==0 & board(r,c-1)==0 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+1)==0 & board(r,c-2)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                             end
                                if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+1;
                                
                            end
                             if r>3 & board(r-3,c-3)==0 & board(r-2,c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-3,c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            end    
                            if c==3 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                                 %disp('1');
                               if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c+3)==0 %Makes sense
                                   %disp('enter')
                                   bestVal=bestVal+1;
                                   %board(r,c+3)=2;
                                   
                               end
                                %disp('2')
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('3')
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c-1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c-1)=2;
                                   
                                end
                                %disp('4')
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('5')
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                %disp('6')
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                %disp('7');
                                if board(r-1, c+1)==0 & board(r-2, c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   board(r-3,c+3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                %disp('8')
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('9');
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('10');
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('11')
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('12');
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp ('13')
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('14');
                                if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                    %disp('15');
                                if r>3 & board(r-1,c+1)==0 & board(r-2,c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                    %board(r-3,c+3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                %disp('16');
                             end %end of r==6 will occur no matter what
                             if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c+1)==0 & board(r-2,c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-3,c+3)==0 & board(r-2,c+2)==0 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c+1)==0 & board(r-3,c+3)==0 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                %board(r-2,c+2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            end
                            if c==5
                            if r==6
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c-3)==0 %Makes sense
                                   %board(r,c-3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r,c+1)==0 %Makes sense
                                   %board(r,c+1)=1;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c-1)==0 %Makes sense
                                   %board(r,c-1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c+2)==0 %Makes sense
                                   %board(r,c+2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c-2)==0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c-1)==0 & board(r-2, c+2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                   %board(r-3,c-3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-3, c-3)==0 & board(r-2, c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                   %board(r-1,c-1)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                                if board(r-1, c-1)==0 & board(r-3, c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                   %board(r-2,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                if board(r,c-1)==0 & board(r,c-2)==0 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                    %board(r,c-3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-2)==0 & board(r,c-3)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c-3)==0 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                    %board(r,c-2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                    %board(r,c-1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c-2)==0 & board(r+1,c-2)~=0 %Makes sense
                                   %board(r,c-2)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            end
                            if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+1;
                                
                            end
                             if r>3 & board(r-3,c-3)==0 & board(r-2,c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-3,c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            end
                            if c==4 %%%%%%%%%%%%%%%%%%%%%%
                             if r==6
                               if board(r,c+1)==0 & board(r,c+2)==0 & board(r,c+3)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+3)=2;
                                   
                                end
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r,c+1)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+1)=2;
                                   
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r,c+2)==0 %Makes sense
                                   bestVal=bestVal+1;
                                   %board(r,c+2)=2;
                                   
                                end
                                if board(r-1, c+1)==0 & board(r-2, c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                   %board(r-3,c+3)=2;
                                   bestVal=bestVal+1;
                                   
                                end
                            else % if not r=6
                                if board(r,c+1)==0 & board(r,c+2)==0 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                    %board(r,c+3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+2)==0 & board(r,c+3)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c+1)==0 & board(r,c+3)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c+1)==0 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                    %board(r,c+2)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if board(r,c-1)==0 & board(r,c+2)==0 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                    %board(r,c+1)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                                if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                    %board(r-3,c)=2;
                                    bestVal=bestVal+1;
                                    
                                    end
                                if r>3 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                    %board(r-3,c-3)=2;
                                    bestVal=bestVal+1;
                                    
                                end
                            end
                            if r>3 & board(r-1,c)==0 & board(r-2, c)==0 & board(r-3,c)==0 %makes sense
                                %board(r-3,c)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c+1)==0 & board(r-2,c+2)==0 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                %board(r-3,c+3)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-3,c+3)==0 & board(r-2,c+2)==0 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                %board(r-1,c+1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-3,c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-2,c-2)==0 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                %board(r-3,c-3)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-3,c-3)==0 & board(r-2,c-2)==0 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                %board(r-1,c-1)=2;
                                bestVal=bestVal+1;
                                
                            end
                            if r>3 & board(r-1,c-1)==0 & board(r-3,c-3)==0 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                %board(r-2,c-2)=2;
                                bestVal=bestVal+1;
                                
                            end
                            end


                    end
                    end
                end
                %fprintf(strcat(' ',num2str(board(r,c))))
            end
        end

    end
    %Check for three or two in a row by human
    bestVal;
    return;
end