% Decoder
color_code(Color, Code) :-
    Colors = [
    "black", "brown", "red", "orange", "yellow", "green",
        "blue", "violet", "grey", "white"
    ],    
    nth0(Code, Colors, Color), !.



% Array
colors(Colors) :-
    Colors = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white"
    ].