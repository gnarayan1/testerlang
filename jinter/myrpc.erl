-module(myrpc).

-export([f/1]).
-export([l/0]).


f(N) ->
{facserver, 'bar@geeth-PC'} ! {self(), N},
receive
{ok, Res} ->
io:format("Factorial of ~p is ~p.~n", [N,Res])
end.


l() ->
	Large_List = [ [1 || _ <- lists:seq(1,1000) ] || _ <- lists:seq( 1, 1200 )],
        {facserver, 'bar@geeth-PC'} ! {self(), Large_List},
receive
{ok, Res} ->
io:format("Got the result")
end.