-module(test).

-export([scenarios/0]).
-export([test_2workers/0, test_2workers_small/0]).
-export([concuerror_options/0]).

concuerror_options() ->
    [{scheduling, oldest}].

scenarios() ->
    [{test_2workers_small, inf, dpor}].

test_2workers() ->
    rush_hour:test_2workers().

test_2workers_small() ->
    rush_hour:test_2workers_small().
