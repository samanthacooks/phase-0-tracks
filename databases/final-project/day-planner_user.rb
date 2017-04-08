# DAY/WEEK PLANNER PROGRAM

# User Interface


# Require all gems
require "sqlite3"
require_relative "day-planner.rb"

db = new_database

#Introduce program to user and start asking for user input

p "Welcome to the Sammie CBCB day planner program. Here you will be able to plan your day or week by task time durations while you are a student at DBC."

p "What day of the week will you like to plan for?"
plan_day = gets.chomp

  if plan_day = "sunday" || "saturday"
    weekday = false
  else
    weekday = true
  end

  create_days(db,plan_day,weekday)