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
    hours INT
  )
  SQL

  create_day_task_table = <<-SQL
  CREATE TABLE IF NOT EXISTS day_tasks(
    id INTEGER PRIMARY KEY,
    day_id INT,
    task_id INT,
    FOREIGN KEY (day_id) REFERENCES days_of_week(id),
    FOREIGN KEY (task_id) REFERENCES tasks(id)
  )
  SQL

  # Create days of week table
db.execute(create_day_table)
db.execute(create_task_table)
db.execute(create_day_task_table)

  def clear_days_of_week_table(db)
    db.execute("DELETE FROM days_of_week")
  end

  def clear_task_table(db)
    db.execute("DELETE FROM tasks")
  end

  def clear_day_task_table(db)
    db.execute("DELETE FROM day_tasks")
  end


  def standard_week(db)
      real_week_days = {"monday" => "true", "tuesday" => "true", "wednesday" => "true", "thursday" => "true", "friday" => "true", "saturday" => "true", "sunday" => "true"}
      real_week_days.each do |days, weekday|
        db.execute("INSERT INTO days_of_week (name,weekday) VALUES (?,?)",[days,weekday])
      end
    db.execute("SELECT id,name FROM days_of_week")
  end

  def create_days(db, day_id) 
    db.execute("INSERT INTO day_tasks (day_id) VALUES (?)", [day_id])
    db.execute("DELETE FROM day_tasks WHERE day_id='none'")
    db.execute("SELECT day_tasks.id, days_of_week.name FROM day_tasks, days_of_week WHERE day_tasks.day_id = days_of_week.id")
  end

  def other_tasks(db)
  other_tasks = {"tv hour" => 1, "exercise" => 1, "recreation activity" => 2, "call family" => 1}
    other_tasks.each do |tasks, hours|
      db.execute("INSERT INTO tasks (name,hours) VALUES (?,?)",[tasks,hours])
    end
  db.execute("SELECT * FROM tasks")
  end

  def weekday_tasks(db)
  weekday_tasks = {"grooming" => 1, "breakfast" => 0.5, "lunch" => 1, "dinner" => 1, "relax time" => 1, "sleep" => 6, "DBC class" => 8.5, "study" => 3}
      weekday_tasks.each do |tasks, hours|
      db.execute("INSERT INTO tasks (name,hours) VALUES (?,?)",[tasks,hours])
    end
    p db.execute("SELECT * FROM tasks")
  end

  def weekend_tasks(db)
  weekend_tasks = {"grooming" => 1, "breakfast" => 0.5, "lunch" => 1, "dinner" => 1, "relax time" => 1, "sleep" => 6, "study" => 5}
      weekend_tasks.each do |tasks, hours|
      db.execute("INSERT INTO tasks (name,hours) VALUES (?,?)",[tasks,hours])
    end
    p db.execute("SELECT * FROM tasks")
  end

  def print_tasks(db)
    db.execute("SELECT * FROM day_tasks")
    # db.execute("SELECT day_tasks.id, days_of_week.name, tasks.name, tasks.hours FROM day_tasks, days_of_week, tasks WHERE day_tasks.day_id = days_of_week.id AND day_tasks.task_id = tasks.id")
  end



  #Introduce program to user and start asking for user input

p "Welcome to the Sammie CBCB day planner program. Here you will be able to plan your day or week by task time durations while you are a student at DBC."
clear_day_task_table(db)

day_id = ""
until day_id == "none"
clear_days_of_week_table(db)  
  p "Enter number for what day you would like to plan for from the table below. If no more, enter 'none'."
  p standard_week(db)
  day_id = gets.chomp

  create_days(db,day_id)
end

p "Below are the days you are planning for this session."
p create_days(db,day_id)

to_be_planned = create_days(db,day_id)

real_week_days = ["monday", "tuesday", "wednesday", "thursday", "friday"]
real_weekend_days = ["saturday", "sunday"]

clear_task_table(db)
to_be_planned.each do |key,value|
  if real_week_days.include? value
    weekday_tasks(db)
  else 
    real_weekend_days.include? value
    weekday_tasks(db)
  end
end

# p weekday_tasks(db)
# p weekend_tasks(db)

p print_tasks(db)


#can't get each tasks to apply to each day individually. will print separately but is still nill in day_task table


