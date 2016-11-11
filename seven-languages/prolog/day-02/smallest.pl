%% Find the smallest element of a list.
accMin([H|T], A, Min) :-
    H < A,
    accMin(T, H, Min).
 
accMin([H|T], A, Min) :-
    H >= A,
    accMin(T, A, Min).
 
%% Unify the arguments
accMin([], A, A).

min(List, Min) :-  
    List = [H|_],
    accMin(List, H, Min).

%% min([-1, 99, 5, 0, -5], Smallest).