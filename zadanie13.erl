-module(zadanie13).
-export([
    new/0,
    from_list/1,
    to_list/1,
    add/2,
    remove/2,
    member/2,
    union/2,
    intersection/2,
    difference/2,
    subset/2,
    equal/2,
    main/0
]).


% Konstrukcja pustego zbioru
new() ->
    [].


% Tworzenie zbioru z listy (usuwa duplikaty)
from_list(List) ->
    lists:foldl(fun(X, Acc) ->
                        case lists:member(X, Acc) of
                            true -> Acc;
                            false -> [X | Acc]
                        end
                end, [], List).


% Zwraca reprezentację listową zbioru
to_list(Set) ->
    Set.


% Dodawanie elementu
add(X, Set) ->
    case lists:member(X, Set) of
        true -> Set;
        false -> [X | Set]
    end.

 
% Usuwanie elementu
remove(X, Set) ->
    lists:filter(fun(E) -> E =/= X end, Set).


% Sprawdzanie członkostwa
member(X, Set) ->
    lists:member(X, Set).


% Suma zbiorów (A ∪ B)
union(A, B) ->
    from_list(A ++ B).


% Część wspólna (A ∩ B)
intersection(A, B) ->
    lists:filter(fun(X) -> lists:member(X, B) end, A).


% Różnica (A \ B)
difference(A, B) ->
    lists:filter(fun(X) -> not lists:member(X, B) end, A).


% Czy A ⊆ B ?
subset(A, B) ->
    lists:all(fun(X) -> lists:member(X, B) end, A).


% Czy zbiory są równe?
equal(A, B) ->
    subset(A, B) andalso subset(B, A).


% Przykłady działania
main() ->
    A = from_list([1,2,3,3,4]),
    B = from_list([3,4,5]),

    io:format("A = ~p~n", [A]),
    io:format("B = ~p~n", [B]),

    io:format("A suma B       = ~p~n", [union(A, B)]),
    io:format("A czesc wspolna B       = ~p~n", [intersection(A, B)]),
    io:format("A \\ B      = ~p~n", [difference(A, B)]),

    io:format("add(6, A)   = ~p~n", [add(6, A)]),
    io:format("remove(3,A) = ~p~n", [remove(3, A)]),

    io:format("member(2,A) = ~p~n", [member(2, A)]),
    io:format("subset(A,B) = ~p~n", [subset(A, B)]),
    io:format("equal(A,A)  = ~p~n", [equal(A, A)]).
