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