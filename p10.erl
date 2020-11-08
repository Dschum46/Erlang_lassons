-module(p10).
-export([encode/1]).

encode(L) ->
    p05:reverse(encode(L, 0, [])).

encode([], Counter,
    Acc) -> Acc;

encode([A,A|T], Counter, Acc) ->
    encode([A|T], Counter+1, Acc);

encode([H|T], Counter, Acc) ->
    G = {Counter+1, H}, encode(T, 0, [G|Acc]).





%%P10 (**) Закодировать список с использованием алгоритма RLE:
%%Пример:
%%1> p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
%%[{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]
