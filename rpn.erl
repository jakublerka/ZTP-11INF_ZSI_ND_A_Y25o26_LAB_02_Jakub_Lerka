-module(rpn).
-export([eval/1, main/0]).

eval(Tokens) ->
    FinalStack = lists:foldl(fun process/2, [], Tokens),
    case FinalStack of
        [Result] -> Result;
        _ -> error({invalid_expression, FinalStack})
    end.


process(Token, Stack) when is_number(Token) ->
    [Token | Stack];

process('+', [A, B | Rest]) ->
    [B + A | Rest];
process('-', [A, B | Rest]) ->
    [B - A | Rest];
process('*', [A, B | Rest]) ->
    [B * A | Rest];
process('/', [A, B | Rest]) ->
    [B / A | Rest];

process(Token, Stack) ->
    error({invalid_token_or_stack, Token, Stack}).

main() ->
    io:format("Przykład 1:  [3, 4, '+'] = ~p~n",
              [eval([3, 4, '+'])]),

    io:format("Przykład 2:  [5, 1, 2, '+', 4, '*', '+', 3, '-'] = ~p~n",
              [eval([5, 1, 2, '+', 4, '*', '+', 3, '-'])]),

    io:format("Przykład 3:  [10, 2, '/', 3, '+'] = ~p~n",
              [eval([10, 2, '/', 3, '+'])]).
