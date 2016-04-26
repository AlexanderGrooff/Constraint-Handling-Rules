Rules seem to take this particular form:

`(Rule [@])? Constraint+ Operator Guard? Body`

* Propagation: `A(N) ==> B(N)` results in `A(N)`, `B(N)`;
* Simplification: `A(N) <=> B(N)` results in `A(N)`;
* Simpagation: `A(N) \ B(N) <=> C(N)` results in `A(N)`, `C(N)` **Not sure about this one yet**.

Where `A(N)`, `B(N)` and `C(N)` are constraints.
