reverse(List, Reversed) :-
          reverseL(List, [], Reversed).

reverseL([], Reversed, Reversed).
reverseL([Head|Tail], SoFar, Reversed) :-
          reverseL(Tail, [Head|SoFar], Reversed).
          
?- reverse([a, b, c, d], X).