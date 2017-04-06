# DAY/WEEK PLANNER PROGRAM

# Create a program for the user to plan the day's or multiple day's activities. Day is based on a 24 hour period
# and has required variables such as sleep and relax time. 


# Require all gems
require 'day-planner'


#  Create the database
db = SQLite3::Database.new("day-planner.db")


# Create the tables with string delimiter
create_day_table = <<-SQL
  CREATE TABLE IF NOT EXISTS days_of_week(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    weekday BOOLEAN
  )
  SQL

  create_task_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    minutes INT
  )
  SQL

  create_day_task_table = <<-SQL
  CREATE TABLE IF NOT EXISTS day_tasks(
    id INTEGER PRIMARY KEY,
    easy_day BOOLEAN,
    day_id INT,
    task_id INT,
    FOREIGN KEY (day_id) REFERENCES days_of_week(id),
    FOREIGN KEY (task_id) REFERENCES tasks(id)
  )
  SQL



  # Create days of week table
  db.execute(create_day_table)

  def create_days(db, name, weekday) 
    db.execute("INSERT INTO days_of_week (name, weekday) VALUES (?, ?)", [name, weekday])
    db.execute("SELECT * FROM days_of_week")
  end