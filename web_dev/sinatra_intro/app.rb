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

# write a GET /contact route that displays an address 

get '/contact' do 
  "address: 3260 De Anza Place"
end

#write a /great_job route that can take a person's name as a query parameter
# and say "Good Jon #{persons_name}!"
# If the name is not present, the route simply says "gd job!"

get '/great_job' do 
  person_name = params[:name]
  if person_name 
    "Great Job #{person_name}!"
  else
    "Good Job"
  end 
end 

# A route that uses route parameters to add two numbers and respond with 
# the result. The data types are tricky here -- when will the data need to
# be (or arrive as) a string?

get '/add/:number_1/plus/:number_2' do 
  number_1 = params[:number_1].to_i
  number_2 = params[:number_2].to_i
  answer = number_1 + number_2
  answer.to_s 
end

# Make a route that allows the user to search the database in some way
# -- maybe for students who have a certain first name, or some other 
# attribute. If you like, you can simply modify the home page to take a 
# query parameter, and filter the students displayed if a query 
# parameters present.

get '/student/:campus' do 
  students = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  response = ""
  students.each do |student|
   response << "#{student["name"]} is going to #{student["campus"]}!<br><br>"
  end
  response
end








