-module(roman).

-export( [string_to_value/1] ).


string_to_value(String) ->
	string_to_value1( String, 0 ).

string_to_value1([], Acc) -> Acc;
string_to_value1([LetterLeft, LetterRight | Rest], Acc ) ->
	Delta = case {value(LetterLeft), value(LetterRight)} of
		{L,R} when L < R -> R - L;
		{L,R} -> L + R
	end,
	string_to_value1( Rest, Acc + Delta );

string_to_value1([H|T], Acc) ->
	string_to_value1(T, Acc + value(H)).

value($I) -> 1;
value($V) -> 5.
