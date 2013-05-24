function implementation(num)
    global board;
    switch num
        case 1
            result=check4win(board);
            move=true;
            %Choose a random point to go to for later.
            point=randi(7);
            Q=[];
            %Check for three or two in a row by human
            
            %Check for three or two in a row by the owner
    
    %Function Description:
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %What is going to happen is that this function will itterate over the
    %entire board. The function will go to each piece that is the opponents and then will check
    %at each piece if the the opponent can win on the next move, if so the
    %computer will move there. This includes checking that the computer can make a valid
    %move to block the oponent. If no win is possible by the oponent, the
    %computer goes to a randon location. 
    
            if move
                for r=1:6
                    for c=1:7
                        Q(1)=r;
                        Q(2)=c;
                        if board(r,c)==1
                            if move
                                %Q
                            switch c
                                case 1 %%%%%%%%%%%%%%%%%%%%%%%%
                                    if r==6
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c+3)==0 %Makes sense
                                           move=false;
                                           board(r,c+3)=2;
                                           break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        if board(r-1, c+1)==1 & board(r-2, c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                           board(r-3,c+3)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-3, c+3)==1 & board(r-2, c+2)==1 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                           board(r-1,c+1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-1, c+1)==1 & board(r-3, c+3)==1 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                           board(r-2,c+2)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                            board(r,c+3)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end  
                                    end
                                    if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c+1)==1 & board(r-2,c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                        board(r-3,c+3)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-3,c+3)==1 & board(r-2,c+2)==1 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                        board(r-1,c+1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c+1)==1 & board(r-3,c+3)==1 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                        board(r-2,c+2)=2;
                                        move=false;
                                        break;
                                    end
                                case 7 %%%%%%%%%%%%%%%%%%%%%%%%%%
                                    if r==6
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c-3)==0 %Makes sense
                                           board(r,c-3)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r,c-1)==0 %Makes sense
                                           board(r,c-1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r,c-2)==0 %Makes sense
                                           board(r,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-1, c-1)==1 & board(r-2, c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                           board(r-3,c-3)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-3, c-3)==1 & board(r-2, c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                           board(r-1,c-1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-1, c-1)==1 & board(r-3, c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                           board(r-2,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                            board(r,c-3)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                            board(r,c-2)=2;
                                            move=false;
                                            break;
                                        end  
                                    end
                                    if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                        board(r-3,c-3)=2;
                                        move=false;
                                        break;
                                    end
                                     if r>3 & board(r-3,c-3)==1 & board(r-2,c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                        board(r-1,c-1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-3,c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                        board(r-2,c-2)=2;
                                        move=false;
                                        break;
                                    end
                                otherwise %%%%%%%%%%%%%%%%%%%%%
                                    if c==2 %%%%%%%%%%%%%%%%%%%%%%
                                     if r==6
                                       %disp('1');
                                       if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c+3)==0 %Makes sense
                                           move=false;
                                           board(r,c+3)=2;
                                           break;
                                       end
                                        %disp('2')
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        %disp('3');
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        %disp('4');
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        %disp('5');
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+1)==1 & board(r,c-1)==0 %Makes sense
                                           move=false;
                                           board(r,c-1)=2;
                                           break;
                                        end
                                        %disp('6');
                                        if board(r-1, c+1)==1 & board(r-2, c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                           board(r-3,c+3)=2;
                                           move=false;
                                           break;
                                        end
                                        %disp('7')
                                    else % if not r=6
                                        %disp('1')
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                            board(r,c+3)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+1)==1 & board(r,c-1)==0 & board(r+1, c-1)~=0 %Makes sense
                                           move=false;
                                           board(r,c-1)=2;
                                           break;
                                        end
                                        %disp('2');
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('3')
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('4')
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('5')
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('6')
                                        if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                            board(r-3,c)=2;
                                            move=false;
                                            break;
                                        end
                                        if r>3 & r <5 & board(r+1,c+1)==1 & board(r+2, c+2)==1 & board(r,c-1)~=0 & board(r+1,c-1)==0 %makes sense 
                                            board(r-1,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                     end
                                    %disp('7')
                                    if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    %disp('8')
                                    if r>3 & board(r-1,c+1)==1 & board(r-2,c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                        board(r-3,c+3)=2;
                                        move=false;
                                        break;
                                    end
                                    %disp('9')
                                    if r>3 & board(r-3,c+3)==1 & board(r-2,c+2)==1 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                        board(r-1,c+1)=2;
                                        move=false;
                                        break;
                                    end
                                    %disp('10')
                                    if r>3 & board(r-1,c+1)==1 & board(r-3,c+3)==1 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                        board(r-2,c+2)=2;
                                        move=false;
                                        break;
                                    end
                                    end
                                    if c==6 %%%%%%%%%%%%%%%%%%%%%%
                                     if r==6
                                       if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c-3)==0 %Makes sense
                                           move=false;
                                           board(r,c-3)=2;
                                           break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r,c-1)==0 %Makes sense
                                           move=false;
                                           board(r,c-1)=2;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r,c-2)==0 %Makes sense
                                           move=false;
                                           board(r,c-2)=2;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c-2)==1 & board(r,c-1)==0 %Makes sense
                                           move=false;
                                           board(r,c-1)=2;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c-1)==1 & board(r,c-2)==0 %Makes sense
                                           move=false;
                                           board(r,c-2)=2;
                                           break;
                                        end
                                        if board(r-1, c-1)==1 & board(r-2, c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                           board(r-3,c-3)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        if board(r,c+1)==1 & board(r,c-2)==1 & board(r+1,c-3)~=0 & board(r,c-3)==0 %makes sense
                                            board(r,c-3)=2;
                                            move=false;
                                            break;
                                        end
                                        if r==5 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r+1,c+1)==0 %makes sense
                                            board(r+1,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c+1)==0 & board(r+1,c+1)~=0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                            board(r,c-2)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+1)==1 & board(r,c-1)==1 & board(r+1,c-2)~=0 & board(r,c-2)==0%makes sense
                                            board(r,c-2)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+1)==1 & board(r,c-2)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                     end
                                        if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                        board(r-3,c-3)=2;
                                        move=false;
                                        break;
                                    end
                                     if r>3 & board(r-3,c-3)==1 & board(r-2,c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                        board(r-1,c-1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-3,c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                        board(r-2,c-2)=2;
                                        move=false;
                                        break;
                                    end
                                    end    
                                    if c==3 %%%%%%%%%%%%%%%%%%%%%%
                                     if r==6
                                         %disp('1');
                                       if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c+3)==0 %Makes sense
                                           %disp('enter')
                                           move=false;
                                           board(r,c+3)=2;
                                           break;
                                       end
                                        %disp('2')
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        %disp('3')
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c-1)==0 %Makes sense
                                           move=false;
                                           board(r,c-1)=2;
                                           break;
                                        end
                                        %disp('4')
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        %disp('5')
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        %disp('6')
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        %disp('7');
                                        if board(r-1, c+1)==1 & board(r-2, c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                           board(r-3,c+3)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        %disp('8')
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                            board(r,c+3)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('9');
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('10');
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('11')
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('12');
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp ('13')
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c+1)~=0 & board(r,c+1)==0%makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('14');
                                        if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                            board(r-3,c)=2;
                                            move=false;
                                            break;
                                        end
                                            %disp('15');
                                        if r>3 & board(r-1,c+1)==1 & board(r-2,c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                            board(r-3,c+3)=2;
                                            move=false;
                                            break;
                                        end
                                        %disp('16');
                                     end %end of r==6 will occur no matter what
                                     if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c+1)==1 & board(r-2,c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                        board(r-3,c+3)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-3,c+3)==1 & board(r-2,c+2)==1 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                        board(r-1,c+1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c+1)==1 & board(r-3,c+3)==1 & board(r-1,c+2)~=0 & board(r-2,c+2)==0
                                        board(r-2,c+2)=2;
                                        move=false;
                                        break;
                                    end
                                    end
                                    if c==5
                                    if r==6
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c-3)==0 %Makes sense
                                           board(r,c-3)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r,c-1)==0 %Makes sense
                                           board(r,c-1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r,c-2)==0 %Makes sense
                                           board(r,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r,c+1)==0 %Makes sense
                                           board(r,c+1)=1;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c-1)==0 %Makes sense
                                           board(r,c-1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c+2)==0 %Makes sense
                                           board(r,c+2)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c-2)==0 %Makes sense
                                           board(r,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-1, c-1)==1 & board(r-2, c+2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                           board(r-3,c-3)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-3, c-3)==1 & board(r-2, c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                           board(r-1,c-1)=2;
                                           move=false;
                                           break;
                                        end
                                        if board(r-1, c-1)==1 & board(r-3, c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                           board(r-2,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        if board(r,c-1)==1 & board(r,c-2)==1 & board(r+1,c-3)~=0 & board(r,c-3)==0%makes sense
                                            board(r,c-3)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0%makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-2)==1 & board(r,c-3)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c-3)==1 & board(r+1,c-2)~=0 & board(r,c-2)==0 %makes sense
                                            board(r,c-2)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r+1,c-1)~=0 & board(r,c-1)==0 %makes sense
                                            board(r,c-1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c-2)==0 & board(r+1,c-2)~=0 %Makes sense
                                           board(r,c-2)=2;
                                           move=false;
                                           break;
                                        end
                                    end
                                    if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                        board(r-3,c-3)=2;
                                        move=false;
                                        break;
                                    end
                                     if r>3 & board(r-3,c-3)==1 & board(r-2,c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                        board(r-1,c-1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-3,c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                        board(r-2,c-2)=2;
                                        move=false;
                                        break;
                                    end
                                    end
                                    if c==4 %%%%%%%%%%%%%%%%%%%%%%
                                     if r==6
                                       if board(r,c+1)==1 & board(r,c+2)==1 & board(r,c+3)==0 %Makes sense
                                           move=false;
                                           board(r,c+3)=2;
                                           break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r,c+1)==0 %Makes sense
                                           move=false;
                                           board(r,c+1)=2;
                                           break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r,c+2)==0 %Makes sense
                                           move=false;
                                           board(r,c+2)=2;
                                           break;
                                        end
                                        if board(r-1, c+1)==1 & board(r-2, c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                           board(r-3,c+3)=2;
                                           move=false;
                                           break;
                                        end
                                    else % if not r=6
                                        if board(r,c+1)==1 & board(r,c+2)==1 & board(r+1,c+3)~=0 & board(r,c+3)==0 %makes sense
                                            board(r,c+3)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+2)==1 & board(r,c+3)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0 %makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c+1)==1 & board(r,c+3)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+1)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0%makes sense
                                            board(r,c+2)=2;
                                            move=false;
                                            break;
                                        end
                                        if board(r,c-1)==1 & board(r,c+2)==1 & board(r+1,c+1)~=0 & board(r,c+1)==0%makes sense
                                            board(r,c+1)=2;
                                            move=false;
                                            break;
                                        end
                                        if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                            board(r-3,c)=2;
                                            move=false;
                                            break;
                                            end
                                        if r>3 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                            board(r-3,c-3)=2;
                                            move=false;
                                            break;
                                        end
                                    end
                                    if r>3 & board(r-1,c)==1 & board(r-2, c)==1 & board(r-3,c)==0 %makes sense
                                        board(r-3,c)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c+1)==1 & board(r-2,c+2)==1 & board(r-2,c+3)~=0 & board(r-3,c+3)==0
                                        board(r-3,c+3)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-3,c+3)==1 & board(r-2,c+2)==1 & board(r,c+1)~=0 & board(r-1,c+1)==0
                                        board(r-1,c+1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-3,c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                        board(r-2,c-2)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-2,c-2)==1 & board(r-2,c-3)~=0 & board(r-3,c-3)==0
                                        board(r-3,c-3)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-3,c-3)==1 & board(r-2,c-2)==1 & board(r,c-1)~=0 & board(r-1,c-1)==0
                                        board(r-1,c-1)=2;
                                        move=false;
                                        break;
                                    end
                                    if r>3 & board(r-1,c-1)==1 & board(r-3,c-3)==1 & board(r-1,c-2)~=0 & board(r-2,c-2)==0
                                        board(r-2,c-2)=2;
                                        move=false;
                                        break;
                                    end
                                    end


                            end
                            end
                        end
                        %fprintf(strcat(' ',num2str(board(r,c))))
                    end
                end

            end

            %Puts a piece on board randomly, will not go to unallowable places.
            if (move)
            for r=1:6
                for c=1:7
                    if board(r,c)==1
                        if r==6
                            if c~=6 & c~=7
                                if board(r,c+1)==1 & board(r,c+2)==0
                                    board(r,c+2)=2;
                                    move=false;
                                    break;
                                end
                            end
                        else
                            if c~=6 & c~=7
                                if board(r,c+1)==1 & board(r+1,c+2)~=0 & board(r,c+2)==0
                                    board(r,c+2)=2;
                                    move=false;
                                    break;
                                else
                                end
                            end
                    end
                    end
                end
            end
            end
            if (move)
            while (board(1,point)~=0) %checks to be sure you do not move on top of board
                point=randi(7);
            end
            %In the owners code. Checks for a valid location of a move I believe.
            for j=1:size(board,1),
                if board(j,point)~=0
                    j=j-1;
                    break;
                end
            end
            board(j,point)=2;
            end
        case 2
            [row, collumn, utility]=miniMax(board);
            if row==0 & collumn==0
                point=randi(7);
                while (board(1,point)~=0) %checks to be sure you do not move on top of board
                    point=randi(7);
                end
                  %In the owners code. Checks for a valid location of a move I believe.
                for j=1:size(board,1),
                if board(j,point)~=0
                    j=j-1;
                break;
                end
                end
                board(j,point)=2;
            else
                board(row, collumn)=2;
                end
        case 3
            %If you would like to perform a minimax eval on the state, 
            %type 1
            gomore=input('minimax?: ');
            if gomore==1
                [p,c,v]=miniMax(board);
            end
            %type the row and col you want to move to next.
            pRow=input('row: ');
            pCol=input('col: ');
            board(pRow, pCol)=2;
        case 4
            [r,c,v]=alphabeta(board);
            board(r,c)=2;
        case 5
            [row,collumn,v]=depthLimited(board);
             if row==0 & collumn==0
                disp('rand');
                point=randi(7);
                while (board(1,point)~=0) %checks to be sure you do not move on top of board
                    point=randi(7);
                end
                for j=1:size(board,1),
                if board(j,point)~=0
                    j=j-1;
                break;
                end
                end
                board(j,point)=2;
            else
                board(row, collumn)=2;
                end
    end
        
    result=check4win(board);
        if  result==1
            disp ('Congratulations! You won!');
        else 
            if result==2
                disp ('You lost to the computer :(');
            end
        end
end