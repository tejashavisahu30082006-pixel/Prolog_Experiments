%Develop a timetable database and answer queries regarding faculty, subjects, and classrooms.



tt(monday,'9:00',python,ajay,101).
tt(monday,'10:00',aiml,sanjay,102).
tt(tuesday,'9:00',dbms,verma,101).
tt(tuesday,'10:00',python,ajay,104).

faculty_sc(Faculty,Day,Time,Subject,Room):-	
    tt(Day,Time,Subject,Faculty,Room).

find_faculty(Subject,Faculty):-				
    tt(Subject,Faculty,_).

find_room(Time,Subject,Room):-				
    tt(Time,Subject,Room).




 