/* Block World Problem*/

/* Initial state */
/* Ontable(B) ^ Ontable(D) ^ On(A,B) ^ On(C,D) ^ Armempty ^ Clear(A) ^ Clear(C) */

/* Goal State */
/* Ontable(C) ^ Ontable(D) ^ On(A,C) ^ On(B,D) ^ Armempty ^ Clear(A) ^ Clear(B) */

/* Initial State*/

ontable(b).
ontable(d).
on(a,b).
on(c,d).
armempty.
clear(a).
clear(c).

/********/


goal_state(a,b,c,d):- ontable(c), ontable(d), on(a,c), on(b,d), armempty, clear(a), clear(b).

/* Operations */

/* Armempty ^ clear(A) ^ ontable(D) is already satisfied */


/* We need clear B */

unstack(a,b):- clear(a), on(a,b), armempty.
armempty.
clear(a).
on(a,b).
holding(a).
clear(b).
putdown(a).
ontable(a).
armempty.
unstack(c,d).
armempty.
clear(c).
on(c,d).
holding(c).
ontable(c).


