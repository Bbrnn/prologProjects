male(john).
male(peter).
male(mark).
male(jack).
male(tom).

female(lisa).
female(mary).
female(sarah).
female(kate).
female(lucy).

parent(john, peter).
parent(john, mark).
parent(lisa, peter).
parent(lisa, mark).
parent(peter, jack).
parent(peter, tom).
parent(mary, jack).
parent(mary, tom).
parent(mark, kate).
parent(mark, lucy).
parent(sarah, kate).
parent(sarah, lucy).

father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.


grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

