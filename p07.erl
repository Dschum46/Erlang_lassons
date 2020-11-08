-module(p07).
-export([flatten/1]).

flatten(L) ->
    flatten(L, []).

flatten([], Acc) ->
    Acc;

flatten([H | T], Acc) ->
    flatten(H, flatten(T,Acc));

flatten(H, Acc) ->
   [H | Acc].





%%P07 (**) Выровнять структуру с вложеными списками:
%%Пример:
%%1> p07:flatten([a,[],[b,[c,d],e]]).
%%[a,b,c,d,e]
