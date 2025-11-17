-module(zadanie10).
-export([main/0]).

main() -> 
    Lista = lists:seq(1,20),
    OnlyOdd = lists:filter(fun(X) -> X rem 2 =:= 1 end, Lista),
    OnlyEven = lists:filter(fun(X) -> X rem 2 =:= 0 end, Lista),
    io:fwrite("Pelna lista: ~p~n", [Lista]),
    io:fwrite("Elementy nieparzyste: ~p~n", [OnlyOdd]),
    io:fwrite("Elementy parzyste: ~p~n", [OnlyEven]).