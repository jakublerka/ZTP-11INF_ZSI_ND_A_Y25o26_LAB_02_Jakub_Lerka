-module(zadanie7).
-export([while/1,while/2, main/0]). 

while(L) -> while(L, 0). 
while([], Acc) -> Acc;

while([_|T], Acc) ->
    io:fwrite("~w~n", [Acc]), 
    while(T, Acc+1). 

for_acc(I, Max, Fun, Acc) when I =< Max ->
    NewAcc = Fun(I, Acc),
    for_acc(I + 1, Max, Fun, NewAcc);
for_acc(_, _, _, Acc) ->
    Acc.

main() -> 
    X = [1,2,3,4],
    io:fwrite("Wywolanie funkcji while z lista: ~p~n",[X]), 
    while(X),

    io:fwrite("Petla for :\n"),
    Sum = for_acc(1, 5,
              fun(I, S) -> I + S end,
              0).
