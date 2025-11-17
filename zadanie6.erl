-module(zadanie6).
-export([main/0]).

main() -> 
    A = 3,
    B = 9,
    ListawZakresie = lists:seq(A, B),
    io:fwrite("Parametry listy sa zmiennymi mozliwymi do zmienienia w kodzie programu przed kompilacja.\n Aktualne parametry: A=~p, B=~p~n", [A, B]),
    io:fwrite("Lista w zakresie od ~p do ~p: ~p~n", [A, B, ListawZakresie]).
