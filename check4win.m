function [w,ind] = check4win(b)

[w,ind]=checkplayer(b,1);
if w==0,[w,ind]=checkplayer(b,2); end
if isempty(find(b==0)) & w==0,w=3;end

end