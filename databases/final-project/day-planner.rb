# DAY/WEEK PLANNER PROGRAM

# Create a program for the user to plan the day's or multiple day's activities. Day is based on a 24 hour period
# and has required variables such as sleep and relax time. 


# Require all gems
require 'day-planner'


#  Create the database
db = SQLite3::Database.new("day-planner.db")


# Create the table with string delimiter
create_table_cmd = <<-SQLite3
  CREATE TABLE IF NOT EXISTS 