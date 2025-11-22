square_of_sum(N, Result) :-
    Result is (N * (N + 1) // 2)^2.


sum_of_squares(N, Result) :-
    sum_of_squares_rec(N, 0, Result).

sum_of_squares_rec(0, Result, Result).

sum_of_squares_rec(N, Acc, Result) :-
    M is N -1,
    NewAcc is N^2 + Acc,
    sum_of_squares_rec(M, NewAcc, Result).  


difference(N, Result) :-
    square_of_sum(N, A),
    sum_of_squares(N, B),
    Result is A - B.