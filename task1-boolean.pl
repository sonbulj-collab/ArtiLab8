and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

boolean(A, B, Result) :-
    and(A, B, First),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, Second),
    or(First, Second, Result).
