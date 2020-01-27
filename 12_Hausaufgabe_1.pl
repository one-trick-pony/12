%Aufgabe2a
userDefinedList(nil).
userDefinedList(cons(_,XS)) :- userDefinedList(XS).


%b 
asPrologList(nil,[]).
asPrologList(cons(X,XS), [X|YS]) :- asPrologList(XS,YS).

%c 
flatten([],[]).
flatten([[]|XS], YS) :- flatten(XS,YS).
flatten([[X|XS] | XSx], [X|YS]) :- flatten([XS|XSx], YS).

%dnz
istbaum(T) :-
        T = tree(a, [tree(b,[]),
                     tree(c,[]),
                     tree(d, [tree(e,[]),
                              tree(f,[]),
                              tree(g,[])])]).
							  
%e 
append([],YS,YS).
append([X|XS],YS,[X|Res]):- append(XS,YS,Res).

flatten( Item , []).

flatten( tree(Left, Val, Right), List) :-
  flatten(Left, List1),
  append(List1, [E], List2),
  flatten(Right, List3),
  append(List2, List3, List).

