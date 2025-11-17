-module(zadanie11).
-export([main/0]).

fold(_, Acc, []) ->
    Acc;
fold(Fun, Acc, [H|T]) ->
    NewAcc = Fun(H, Acc),
    fold(Fun, NewAcc, T).

main() ->
    io:fwrite("Funkcja fold - sumowanie elementow listy [1,2,3,4]:~n"),
    Sum = fold(fun(X, Acc) -> X + Acc end, 0, [1,2,3,4]),
    io:fwrite("Wynik: ~p~n", [Sum]).