INSERT INTO ukePlan 
VALUES (
	   1, 
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = "1"),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '2'),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '3'),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '4'),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '5'),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '6'),
	   (SELECT program_id as "Program" FROM programmer WHERE program_id = '7')
);
INSERT INTO ukePlan 
VALUES (
       2,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6)
);
INSERT INTO ukePlan 
VALUES (
       3,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3)
);
INSERT INTO ukePlan 
VALUES (
       4,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2)
);
INSERT INTO ukePlan 
VALUES (
       5,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4)
);
INSERT INTO ukePlan 
VALUES (
       6,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1)
);
INSERT INTO ukePlan 
VALUES (
       7,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4)
);
INSERT INTO ukePlan 
VALUES (
       8,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7)
);
INSERT INTO ukePlan 
VALUES (
       9,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2)
);
INSERT INTO ukePlan 
VALUES (
       10,
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 7),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 2),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 5),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 4),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 1),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 6),
       (SELECT program_id as "Program" FROM programmer WHERE program_id = 3)
);
