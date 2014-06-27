-module( roman_test ).

-include_lib( "eunit/include/eunit.hrl" ).

iii_returns_3_test() ->
	?assertEqual( 3, roman:string_to_value( "III" ) ).

vi_returns_6_test() ->
	?assertEqual( 6, roman:string_to_value( "VI" ) ).

iv_returns_4_test() ->
	?assertEqual( 4, roman:string_to_value( "IV" ) ).
