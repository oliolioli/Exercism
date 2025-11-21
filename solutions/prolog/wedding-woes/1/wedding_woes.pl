% Define the 'chatty' fact
chatty(gustavo).
chatty(valeria).

% Define the 'likes' fact
likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

% Define the 'pairing' rule
pairing(liker, liked) :=
    likes(liker, liked),
    likes(liked, liker).

pairing(X,Y) :- likes(X,Y), likes(Y,X).
pairing(X,Y) :- chatty(X).
pairing(X,Y) :- chatty(Y).

seating(A,B,C,D,E):-
    pairing(A,B),
    pairing(B,C),
    pairing(C,D),
    pairing(D,E),
    pairing(E,A).