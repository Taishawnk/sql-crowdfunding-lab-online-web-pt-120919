Create Table projects(id INTEGER PRIMARY KEY, 
title TEXT,
category Text, 
funding_goal INTEGER,
start_date DATE, 
end_date Date );

Create Table users(id INTEGER PRIMARY KEY, 
name Text, 
age INTEGER );

Create Table pledges(id INTEGER PRIMARY KEY,
amount INTEGER, user_id INTEGER, project_id INTEGER);