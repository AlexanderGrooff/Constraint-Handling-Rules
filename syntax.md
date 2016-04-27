Rules seem to take this particular form:

`(Rule [@])? Constraint+ Operator Guard? Body`

* Propagation: `A(N) ==> B(N)` results in `A(N)`, `B(N)`;
* Simplification: `A(N) <=> B(N)` results in `B(N)`;
* Simpagation: `A(N) \ B(N) <=> C(N)` results in `A(N)`, `C(N)`.

Where `A(N)`, `B(N)` and `C(N)` are constraints.

`A(N)`, `B(N)` and `C(N)` each can consist of one or multiple constraints, each with zero or multiple arguments.
