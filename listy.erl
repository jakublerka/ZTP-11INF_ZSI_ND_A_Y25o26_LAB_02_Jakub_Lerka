-module(listy).
-export([main/0]).

main() -> 
    Lista1 = [1,2,3, {numbers,[4,5,6]}, 5.34, atom],
    Lista1PoUsunieciu = Lista1 -- [1,2,3],

    Lista2 = [a, b, c, d, e, f, g, h, i, j, k, l],

    io:format("Lista 1: ~tp ~tp ~tp ~tp ~tp ~tp~n\n", Lista1),
    io:fwrite("Lista 1 po usunieciu danych: ~tp~n\n",[Lista1PoUsunieciu]),
    io:fwrite("Lista 2: ~tp~n", [Lista2]),
    io:fwrite("Lista 2 po dodaniu danych: ~tp~n", [Lista2 ++ [m,n,o,p,q,r,s,t,u,v,w,x,y,z]]),
    io:fwrite("Usuniecie ostatniego elementu Listy 2: ~tp~n", [lists:droplast(Lista2)]).