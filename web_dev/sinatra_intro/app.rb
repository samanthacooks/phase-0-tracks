# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


# write a GET route that displays an address

get "/contact" do 
  "123 Lollipop Lane<br>
  Nowhere, USA 46462"
end


# write a GET route that takes a person's name as a parameter and says 'Good job!'

get "/great_job/" do
  persons_name = params[:persons_name]
  if persons_name
    "Good job #{persons_name}!"
  else
    "Good job!"
  end
end


# write a GET route that adds two numbers and responds with the result

get "/sum/:num1/add/:num2" do
 params[:num1] = params[:num1].to_i
 params[:num2] = params[:num2].to_i
 p params[:num1] + params[:num2]
end


# write a GET route that allows the user to search the database for all students below the age of 30
