% Create a simple Knowledge Base using facts, predicates, clauses, and goals (Student-Course Database) 



student(danish).
student(aayush).
student(riya).
student(chaitanya).

branch(cse).
branch(ai).
branch(ds).
branch(cs).

enroll(danish,ai).
enroll(danish,cse).
enroll(aayush,ds).
enroll(riya,ai).

count:-findall(X,enroll(X,ai),List),length(List,C),write(C).


