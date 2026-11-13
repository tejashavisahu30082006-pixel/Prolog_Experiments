%Classify students as topper, average, and fail using rule-based reasoning.




marks(danish,99).
marks(aayush,98).
marks(riya,13).
marks(anish,55).
marks(basant,75).
marks(chaitanya,35).


topper(Student):-
    marks(Student,Marks),
    Marks>=85.
average(Student):-
    marks(Student,Marks),
    Marks<85,
    Marks>40.
fail(Student):-
    marks(Student,Marks),
    Marks<40.


