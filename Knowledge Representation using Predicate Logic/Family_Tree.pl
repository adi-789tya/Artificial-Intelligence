/* Male */
male(shankarlal).
male(pradeep).
male(arvind).
male(yogendra).
male(ankur).
male(aditya).

/* Female */
female(chainkunwar).
female(anita).
female(savita).
female(varnika).
female(chandrika).

/* Father */
father(shankarlal, pradeep).
father(shankarlal, arvind).
father(pradeep, ankur).
father(pradeep, yogendra).
father(arvind, aditya).
father(arvind, chandrika).
father(arvind, varnika).


/* Mother */
mother(chainkunwar, arvind).
mother(chainkunwar, pradeep).
mother(anita, ankur).
mother(anita, yogendra).
mother(savita, aditya).
mother(savita, chandrika).
mother(savita, varnika).


/* Husband*/
husband(shankarlal, chainkunwar).
husband(pradeep, anita ).
husband(arvind, savita).


/*Brother*/
brother(pradeep, arvind).
brother(ankur, yogendra).
brother(aditya, varnika).
brother(aditya, chandrika).


/* Sister*/
sister(chandrika, aditya).
sister(varnika, aditya).


/* Clauses*/
isfather(X, Y):- male(X), father(X,Y).
ismother(X,Y):- female(X), mother(X,Y).
isgrandfather(X,Y):- male(X), father(X,Z) , father(Z, Y).
isgrandmother(X,Y):- female(X), mother(X,Z), father(Z,Y).
iscousin(X,Y):- father(P,X), father(Q, Y) , brother(P,Q).
isgrandson(Y,X):- father(X,Z), father(Z,Y), male(Y).
isgranddaughter(Y,X):- father(X,Z), father(Z, y), female(Y).
isaunt(X,Y):- father(P, Y), brother(P, Q), husband(Q, X).
isuncle(X,Y):- father(Z,Y),brother(Z,X).
