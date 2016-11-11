%% Sort the elements of a list.
%% Based on http://www.cs.utexas.edu/~cannata/cs345/Class%20Notes/Prolog%20examples.pdf

quicksort([], []).
quicksort([X | Tail], Sorted) :-
    split(X, Tail, Small, Big),
    quicksort(Small, SSmall),
    quicksort(Big, SBig),
    append(SSmall, [X | SBig], Sorted).

split(_X, [], [], []).
split(X, [Y|Tail], [Y|Small], Big) :-
    X >= Y, split(X, Tail, Small, Big).
split(X, [Y|Tail], Small, [Y|Big]) :-
    X < Y, split(X, Tail, Small, Big).

%% quicksort([3,1,2], Y).