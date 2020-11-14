-module(p07).
-export([flatten/1]).


flatten(List) ->
    FlattenedList = flatten(List, []),
    p05:reverse(FlattenedList).

flatten([Element|T], Acc) ->
    flatten(T, [Element|Acc]);
flatten([], Acc) ->
    Acc;
flatten([H|T], Acc) ->
    flatten(T, flatten(H, Acc)).



%%P07 (**) Выровнять структуру с вложеными списками:
%%Пример:
%%1> p07:flatten([a,[],[b,[c,d],e]]).
%%[a,b,c,d,e]
