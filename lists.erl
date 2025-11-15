-module(lists).
-export([main/0]).

Lista1 = [1,2,3, {numbers,[4,5,6]}, 5.34, atom].
Lista1PoUsunieciu = Lista1 -- [1,2,3].

main() -> 
    io:format("Lista 1: ~tp~n\n", Lista1).
    io:format("Lista 1 po usunieciu danych: ~tp~n\n",Lista1PoUsunieciu).