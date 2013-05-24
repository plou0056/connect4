%Steven Kolln AI proj 3
%This is the file for the utility function for a depth limited search.
%This returns the utility at the depth of the minimax alpha beta prunning 
%depth cut off when a non terminal state
 function [number]=cutOffUtility(state)
 number=evalStateTwo(state)-evalStateOne(state);
 return;
 end