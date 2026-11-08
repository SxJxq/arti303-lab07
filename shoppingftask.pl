:- dynamic basket/1.

basket([coffee, milk, chocolate, apple, juice]).

start :-
    menu.

menu :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    do(Choice).

do(d) :-
    !,
    basket(L),
    show(L),
    menu.
do(a) :-
    !,
    write('enter the item you want to add it'), nl,
    read(Item),
    retract(basket(L)),
    append(L, [Item], L2),
    assert(basket(L2)),
    write('The item has been added'), nl,
    menu.
do(e) :-
    !.
do(_) :-
    write('Invalid choice'), nl,
    menu.

show([]).
show([H|T]) :-
    write(H), nl,
    show(T).
