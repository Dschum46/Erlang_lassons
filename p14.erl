-module(p14).
-export([duplicate/1]).

duplicate(L) ->
    p05:reverse(duplicate(L, [])).

duplicate([], Acc) ->
    Acc;

duplicate([H|T], Acc) ->
    duplicate(T, [H | [H | Acc]]).




%%P14 (*) Написать дубликатор всех элементов входящего списка:
%%Пример:
%%1> p14:duplicate([a,b,c,c,d]).
%%[a,a,b,b,c,c,c,c,d,d]
