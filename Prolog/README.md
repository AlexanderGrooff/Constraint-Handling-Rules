# Implementation details

This Prolog implementation solves a given Prolog query `?- <...>.` given zero or many facts `<...>.`, and/or horn clauses `<...> :- <...>.`. It answers `true` or `false`, along with variable equalities, if found in the form `X1 = <...>,...,Xn = <...>`.

## Syntax

The solver requires an input file in the form: `Statement* Query`, where:
```
Statement ::= <Definable> :- <Callable>.
Statement ::= <Definable>.
Query ::= ?- <Callable>.
```
The relation between `Definable` and `Callable` is a strict inclusion, such that `Callable ::= Definable` (`Definable` is a subset of `Callable`), but not reversed. `Definable` can only be rewritten to a Prolog atom and a Compound Term with one or many `Term`s as arguments. `Callable` additionally allows:
* Conjunction of 2 `Callable`s `,/2`
* Disjunction of 2 `Callable`s `;/2`
* Negation of 1 `Callable` `\+/1`
* Explicit Unification of 2 `Term`s `=/2`
* Term equality `==/2`
* Arithmetic comparisons
* `is/2` evaluations
`Callable` does not allow basic expressions such as numbers, strings, arithmetic expressions and variables. Only the `Term` can be rewritten to those syntactic elements.

# Future Work

## Disjunction Answers

An important feature which has not yet been implemented is the possibility of disjunction in answers. This should occur when a query evaluates to `true` and there are multiple possible assignments to the free (query) variables. An example:
```
a(x1, x2).
a(x3, x4).

?- a(V1, V2).
```
The current implementation halts when it has found the first satisfying assigment:
```
true.
V1 = x1, V2 = x2.
```
A correct implementation should result in:
```
true.
V1 = x1, V2 = x2;
V1 = x3, V2 = x4.
```

## Cut

Another important feature that has not been implemented is the cut operator `!/1`. This gives the programmer control over when the engine should stop searching for satisfying asssignments.
