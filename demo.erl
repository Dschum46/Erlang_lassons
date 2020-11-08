-module(demo).
-export([double_num/1, times/2]).

double_num(X) ->
    times(X, 4).

times(X, N) ->
    X * N.










