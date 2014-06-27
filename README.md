roman
=====

Roman value calculator

This is tail call optimized, you could make this a little more readable with a pure recursive solution.
string_to_value/1 is the api fun, primarily to drop need for caller to pass initial accumulator.

To try this out, drop the .erl files in to a folder, fire up erl in that folder, and run:

c(roman), c(roman_test), roman_test:test().
