# DAY/WEEK PLANNER PROGRAM

# Create a program for the user to plan the day's or multiple day's activities. Day is based on a 24 hour period
# and has required variables such as sleep and relax time. 


# Require all gems
require "sqlite3"


#  Create the database method with new tables
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
    db.execute("DELETE FROM days_of_week WHERE name='none'")
    db.execute("SELECT name FROM days_of_week")
  end

  def clear_days_of_week_table(db)
  db.execute("DELETE FROM days_of_week")
  end








  #Introduce program to user and start asking for user input

p "Welcome to the Sammie CBCB day planner program. Here you will be able to plan your day or week by task time durations while you are a student at DBC."


p "What day of the week will you like to plan for? If no more enter 'none'."
plan_day = gets.chomp

until plan_day == "none"
    if plan_day = "monday" || "tuesday" || "wednesday" || "thursday" || "friday"
      weekday = "true"
      p "Since today is a weekday, DBC class has automatically been added to your day. Enter another day or 'none' if done."
    else
      weekday = "false"
      p "It's the weekend! No DBC class today, but study time has been added automatically to your day. Enter another day or 'none' if done."
    end
  plan_day = gets.chomp
  create_days(db,plan_day,weekday)
end

p "See below for days set to be planned."
p create_days(db,plan_day,weekday)

clear_days_of_week_table(db)

# Won't save the first entry for the first day to be planned.


