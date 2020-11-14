-module(p05).
-export([reverse/1]).


reverse(List) ->
    reverse(List, []).


reverse([], Result) ->
    Result;
reverse([H|T], Result) ->
    reverse(T, [H|Result]).





%%P05 (*) Перевернуть список:
%%Пример:
%%1> p05:reverse([1,2,3]).
%%[3,2,1]
