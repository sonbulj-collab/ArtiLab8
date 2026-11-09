sumlist([], 0).
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, Rest),
    Sum is Head + Rest.
