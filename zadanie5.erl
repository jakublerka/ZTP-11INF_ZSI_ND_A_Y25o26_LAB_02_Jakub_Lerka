-module(zadanie5).
-export([main/0]).

main() -> 
    Lista = [1,2,3,4,5,6,7,8,9,10],
    io:fwrite("Pelna lista: ~p~n", [Lista]),
    io:fwrite("Ostatni element listy: ~p~n", [lists:last(Lista)]),
    io:fwrite("Przedostatni element listy: ~p~n", [lists:nth(length(Lista) - 1, Lista)]),
    io:fwrite("Odczyt n-tego elementu listy, n=4: ~p~n", [lists:nth(4, Lista)]),
    io:fwrite("Dlugosc listy: ~p~n", [length(Lista)]),
    io:fwrite("Usuniecie n-tego elementu listy, n=3: ~p~n", [lists:delete(lists:nth(3, Lista), Lista)]),
    io:fwrite("Odwrocenie listy: ~p~n", [lists:reverse(Lista)]),
    io:fwrite("Sprawdzenie czy lista jest palindromem: ~p~n", [Lista =:= lists:reverse(Lista)]).
 
