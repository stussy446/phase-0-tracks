# Create a database that stores movie, game, and book backlogs
  # movies has id, name, length, release, completed 
  # games has id, name, length, release, completed
  # books has id, name, author, pages, completed

# bring in the sqlite3 gem  
require 'sqlite3'

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

def add_movie_or_game(db, table, name, hours=0, release_year=0000, completed="false")
    db.execute("INSERT INTO #{table} (name, hours, release_year, completed) 
    VALUES (?,?,?,?)", [name, hours, release_year, completed])
    print_table(db, table)
end

def add_book(db, name, author, pages=0, completed="false")
  db.execute("INSERT INTO books (name, author, pages, completed)
  VALUES (?,?,?,?)", [name, author, pages, completed])
  print_table(db, "books")
end 

# create a  method that let the user delete from each table
def delete_entry(db, table, name)
  db.execute("DELETE FROM #{table} WHERE name = (?)", [name])
  print_table(db, table)
end

# create a method that lets the user mark an item as complete
def mark_complete(db, table, name)
  name = name.downcase
  db.execute("UPDATE #{table} set completed ='true' WHERE name = (?)", [name])
  print_table(db, table)
end

# create a method that lets the user see their backlogs one by one
def print_table(db,table)
  puts "~~~#{table}~~~"
  items = db.execute("SELECT * FROM #{table}")
  if table == "movies" || table == "games"
    items.each do |item| 
      puts "name: #{item[1]}, hours: #{item[2]}, release year: #{item[3]}, completed? #{item[4]}"
    end
  elsif table == "books"
    items.each do |item| 
      puts "name: #{item[1]}, author: #{item[2]}, pages: #{item[3]}, completed? #{item[4]}"
    end
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
# print_table(backlogs, "games")
#print_all_tables(backlogs)

# UI 

loop do 
  puts "Welcome to your backlogs! Would you like to Add one of your backlogs today,
  Update an item as completed, delete an entry, or read your backlogs?"
  puts "if you are done, simply type 'done'"
  answer = gets.chomp.downcase 
  break if answer == 'done'
  if answer == "add"
    puts "Beginning adding process, would you like to add to your movies, 
    games, or books list?"
    table_choice = gets.chomp.downcase
    if table_choice == "movies" || table_choice == "games"
      puts "You have chosen #{table_choice}. What is the name of your entry?"
      name = gets.chomp.downcase 
      puts "How many hours is it?"
      hours = gets.chomp.to_i
      puts "What year was it released?"
      year = gets.chomp.to_i
      add_movie_or_game(backlogs, table_choice, name, hours, year)
    elsif table_choice == "books"
      puts "You have chosen #{table_choice}. What is the name of your book?"
      book = gets.chomp.downcase
      puts "Who is the author of this book?"
      author = gets.chomp.downcase 
      puts "How many pages long is the book?"
      pages = gets.chomp.to_i 
      add_book(backlogs, book, author, pages)
    else
      puts "Invalid Input"  
    end
  elsif answer == "update"
    puts "You have chosen to update an entry! Would you like to update an
    entry from your movies, games, or books?"
    entry_update = gets.chomp.downcase
    puts "What is the name of the entry you would like to update?"
    entry_name = gets.chomp.downcase 
    mark_complete(backlogs, entry_update, entry_name)
  elsif answer == "delete"
    puts "You have chosen to delete an entry! Would you like to delete an
    entry from your movies, games, or books?"
    delete_from_table = gets.chomp.downcase 
    puts "What is the name of the entry you would like to delete?"
    delete_name = gets.chomp.downcase 
    delete_entry(backlogs, delete_from_table, delete_name)
  elsif answer == "read"
    puts "If you would like to read a specific backlog, enter the name,
    otherwise press enter to see all of your backlogs."
    specific_backlog = gets.chomp.downcase 
    if specific_backlog == "movies" || specific_backlog == "games" || 
    specific_backlog == "books"
      print_table(backlogs, specific_backlog)
    else
      print_all_tables(backlogs)
    end
  end
end

puts "Thanks for backlogging with us!!"



