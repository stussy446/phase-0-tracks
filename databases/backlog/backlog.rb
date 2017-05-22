# Create a database that stores movie, game, and book backlogs
  # movies has id, name, length, release, completed 
  # games has id, name, length, release, completed
  # books has id, name, author, pages, completed

# bring in the sqlite3 gem and faker gem 
require 'sqlite3'
require 'faker'

# create the database 
backlogs = SQLite3:: Database.new("backlogs.db")

# create the tables that we will be using assigned to variables

# create movies table 
create_movie_table = <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    hours INT,
    release_year INT,
    completed BOOLEAN
  )
SQL

# create games table 
create_game_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS games (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    hours INT,
    release_year INT,
    completed BOOLEAN
  )
SQL

# create books table 
create_book_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS books (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    author VARCHAR(255),
    pages INT,
    completed BOOLEAN
    )
SQL

# execute creation of the three above tables 
backlogs.execute(create_movie_table)
backlogs.execute(create_game_table)
backlogs.execute(create_book_table)

# create methods  that lets users add to each of the tables 

def add_movie_or_game(db, table, name, hours, release_year, completed="false")
    db.execute("INSERT INTO #{table} (name, hours, release_year, completed) 
    VALUES (?,?,?,?)", [name, hours, release_year, completed])
    print_table(db, table)
end

def add_book(db, name, author, pages, completed="false")
  db.execute("INSERT INTO books (name, author, pages, completed)
  VALUES (?,?,?,?)", [name, author, pages, completed])
end 

# create a  method that let the user delete from each table
def delete_entry(db, table, name)
  db.execute("DELETE FROM #{table} WHERE name = (?)", [name])
end

# create a method that lets the user mark an item as complete
def mark_complete(db, table, name)
  db.execute("UPDATE #{table} set completed ='true' WHERE name = (?)", [name])
end

# create a method that lets the user see their backlogs one by one
def print_table(db,table)
  puts "~~~#{table}~~~"
  table = db.execute("SELECT * FROM #{table}")
  table.each do |item|
    p item    
  end 
end

# create a method that lets the user see all backlogs at once.
def print_all_tables(db)
  print_table(db, "movies")
  print_table(db, "games")
  print_table(db, "books")
end

# DRIVER CODE 
# add_movie_or_game(backlogs, "movies", "Split", 2, 2017, "false")
# add_movie_or_game(backlogs, "games", "Kingdom Hearts", 40, 2000, "false")
# add_book(backlogs, "Harry Potter 3", "JK Rowling", 350, "false")
# delete_entry(backlogs, "movies", "Split")
# delete_entry(backlogs, "games", "Kingdom Hearts")
# delete_entry(backlogs, "books", "Harry Potter 3")
# mark_complete(backlogs, "movies", "Split")
#print_table(backlogs, "games")
print_all_tables(backlogs)

# UI 

puts "Welcome to your backlogs! Would you like to Add one of your backlogs today,
Update an item as completed, delete an entry, or take a look at your backlogs?"
answer = gets.chomp.downcase 
if answer == "add"
  puts "Beginning adding process, would you like to add to your movies, 
  games, or books list?"
  table_choice = gets.chomp.downcase
  if table_choice == "movies" || table_choice == "games"
    puts "You have chosen #{table_choice}. What is the name of your entry?"
    name = gets.chomp 
    puts "How many hours is it?"
    hours = gets.chomp.to_i
    puts "What year was it released?"
    year = gets.chomp.to_i
    add_movie_or_game(backlogs, table_choice, name, hours, year)
  end
end




