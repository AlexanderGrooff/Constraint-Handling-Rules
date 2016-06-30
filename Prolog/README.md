# Future Work

# Disjunction Answers

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
