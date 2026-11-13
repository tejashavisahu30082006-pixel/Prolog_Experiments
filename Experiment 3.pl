%Perform append, reverse, member search, and list length operations



%1--> append ,insert , reverse list.

list([1,2,3,4,5]).
append([],L,L).
append([H|T],L,[H|R]):-                  
    append(T,L,R).
insert_3rd(X,[A,B|T],[A,B,X|T]).         
rev_list([],[]).
rev_list([H|T],R):-                       
    rev_list(T,R1),
    append(R1,[H],R).


        

%2--> member search and list length.


mylist_ht([Head|Tail],Head,Tail).
mylist_t([_|Tail],Tail).
mylist_h([Head|_],Head).
mylist([1,2,3,4,5]).

search(X):-										
    mylist(L),member(X,L).						

mylength(N):-									
    mylist(L),									 
    length(L,N).								



