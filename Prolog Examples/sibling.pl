mother_child(a, b).
father_child(tom, sally).
father_child(tom, erica).
father_child(tom, b).
 
sibling(X, Y)      :- parent_child(Z, X), parent_child(Z, Y).
 
parent_child(X, Y) :- father_child(X, Y).
parent_child(X, Y) :- mother_child(X, Y).
?- sibling(sally, erica).