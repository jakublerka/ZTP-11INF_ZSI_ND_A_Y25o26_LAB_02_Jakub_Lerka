-module(zadanie9).
-export([main/1]).




%ALGORYTM QUICKSORT
% Jako parametr przyjmuje liste liczb do posortowania.
main([]) -> []; 
main([Pivot|Rest]) -> 
  main([Smaller || Smaller <- Rest, Smaller =< Pivot]) ++ [Pivot] ++ main([Larger || Larger <- Rest, Larger > Pivot]).
