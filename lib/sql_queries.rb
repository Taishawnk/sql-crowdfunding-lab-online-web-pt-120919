#INSERT INTO users (id, name, age)

#INSERT INTO projects (id, title, category, funding_goal, start_date, end_date

#INSERT INTO pledges (id, amount, user_id, project_id) VALUES

#SELECT column_name, aggregate_function(column_name)
#FROM table_name
# WHERE column_name operator value
# GROUP BY column_name;


def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
<<-SQL 
SELECT projects.title, SUM(pledges.amount) 
FROM projects 
JOIN pledges 
ON projects.id = pledges.project_id 
GROUP by projects.title;
SQL
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name

 <<-SQL 
 SELECT users.name, users.age, SUM( pledges.amount) 
 FROM users
 JOIN pledges
 ON users.id = pledges.user_id
 GROUP BY users.name;
 SQL
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  <<-SQL 
   SELECT projects.title, (SUM(pledges.amount) - projects.funding_goal) 
   FROM projects
   JOIN pledges ON projects.id = pledges.project_id
   GROUP BY projects.title
   HAVING funding_goal >= 0
   ORDER BY projects.title;


   SQL
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "Write your SQL query Here"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "Write your SQL query Here"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Write your SQL query Here"
end
