# Lua Function Bug: Unexpected nil Return

This repository demonstrates a common error in Lua functions: omitting a return statement in certain conditional branches. The function `foo` is supposed to perform different operations based on the input value, but it lacks a return statement to handle all cases. This causes unexpected `nil` return values for inputs not explicitly handled in the `if` and `elseif` conditions.

## Bug Description

The `foo` function is expected to return a modified version of the input `x` under different conditions.  However, if `x` is less than or equal to 10 and not nil, the function implicitly returns `nil` because no `return` statement is executed. This is particularly problematic if the calling code doesn't account for this unexpected behavior.

## Bug Solution

The solution involves adding a `return` statement to handle the case where `x` is not nil and is less than or equal to 10.  This guarantees a value is always returned, avoiding the unexpected `nil`.