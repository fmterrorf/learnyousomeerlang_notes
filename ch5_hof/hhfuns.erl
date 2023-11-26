-module(hhfuns).
-compile(export_all).

one() -> 1.
two() -> 2.


add(X,Y) -> X() + Y().


map(_, []) -> [];
map(F, [H|T]) -> [F(H) | map(F, T)].

incr(X) -> X + 1.
decr(X) -> X - 1.

base() ->
  A = 1,
  (fun() -> A = 2 end)().
