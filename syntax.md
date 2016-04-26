Rules seem to take this particular form:

`(Name [@])? <(simplification | propagation | simpagation)> Pragma?`

Some things I noticed from the syntax:

* When adding a rule like `A(N) ==> B(N)`, and a constraint A(1) is added, both A(1) and B(1) will be added to the store. This is propagation;
* When adding a rule like `A(N) <=> B(N)`, and a constraint A(1) is added, only B(1) will be added to the store. This is simplification;

