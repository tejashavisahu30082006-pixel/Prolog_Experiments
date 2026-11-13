 %Implement arithmetic operations, Factorial, and Fibonacci Series using recursion.



%1--> Arithmetic Operations 

add(A,B,R):-                         % add(1,2,R).
    R is A+B. 
sub(A,B,S):-						 % sub(1,2,S).
    S is A-B.
mul(A,B,M):-						 % mul(1,2,M).
    M is A*B.
div(A,B,D):-						 % div(1,2,D).
    D is A/B.


%2--> Factorial 

fact(0,1).
fact(N,F):-								
    N>0,
    N1 is N-1,
    fact(N1,F1),
    F is N*F1.

%3--> Fibonacci 

fib(0,0).
fib(1,1).
fib(N,F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.


