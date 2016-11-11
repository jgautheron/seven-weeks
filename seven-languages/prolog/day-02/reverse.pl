% Reverse the elements of a list.
reverse([], List).
reverse([[]|Tail], [Tail|List]).
% reverse([foo, moo, bar], List).