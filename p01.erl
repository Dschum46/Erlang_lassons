-module(p01).
-export([last/1]).

last([X]) ->
    X;
last([_|T]) ->
    last(T).


%%P01 (*) Найти последний элемент списка:
%%Пример:
%%1> p01:last([a,b,c,d,e,f]).
%%f
