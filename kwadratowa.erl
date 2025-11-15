-module(kwadratowa).
-export([solve/3]).

% 2. Napisać klasyczny program do rozwiązywania równania kwadratowego w Erlangu.

solve(A, B, C) ->
    D = B*B - 4*A*C,

    if
        D > 0 ->
            X1 = (-B + math:sqrt(D)) / (2*A),
            X2 = (-B - math:sqrt(D)) / (2*A),
            io:format("Rozwiązania: ~p i ~p~n", [X1, X2]);

        D == 0 ->
            X = -B / (2*A),
            io:format("Jedno rozwiązanie: ~p~n", [X]);

        D < 0 ->
            io:format("Brak rozwiązań rzeczywistych (D < 0).~n")
    end.
